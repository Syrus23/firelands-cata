/*
 * This file is part of the FirelandsCore Project. See AUTHORS file for Copyright information
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Affero General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for
 * more details.
 *
 * You should have received a copy of the GNU Affero General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#ifndef _FIRELANDS_DYNAMICOBJECT_H
#define _FIRELANDS_DYNAMICOBJECT_H

#include "Object.h"
#include "MapObject.h"

class Unit;
class Aura;
class SpellInfo;

enum DynamicObjectType
{
    DYNAMIC_OBJECT_PORTAL           = 0x0,      // unused
    DYNAMIC_OBJECT_AREA_SPELL       = 0x1,
    DYNAMIC_OBJECT_FARSIGHT_FOCUS   = 0x2,
    DYNAMIC_OBJECT_RAID_MARKER      = 0x3
};

class FC_GAME_API DynamicObject : public WorldObject, public GridObject<DynamicObject>, public MapObject
{
    public:
        DynamicObject(bool isWorldObject);
        ~DynamicObject();

        void AddToWorld() override;
        void RemoveFromWorld() override;

        void BuildValuesUpdate(uint8 updateType, ByteBuffer* data, Player* target) const override;

        bool CreateDynamicObject(ObjectGuid::LowType guidlow, Unit* caster, SpellInfo const* spell, Position const& pos, float radius, DynamicObjectType type);
        void Update(uint32 p_time) override;
        void Remove();
        void SetDuration(int32 newDuration);
        int32 GetDuration() const;
        void Delay(int32 delaytime);
        void SetAura(Aura* aura);
        void RemoveAura();
        void SetCasterViewpoint();
        void RemoveCasterViewpoint();
        Unit* GetCaster() const { return _caster; }
        void BindToCaster();
        void UnbindFromCaster();
        uint32 GetSpellId() const { return GetUInt32Value(DYNAMICOBJECT_SPELLID); }
        SpellInfo const* GetSpellInfo() const;
        ObjectGuid GetCasterGUID() const { return GetGuidValue(DYNAMICOBJECT_CASTER); }
        float GetRadius() const { return GetFloatValue(DYNAMICOBJECT_RADIUS); }

    protected:
        Aura* _aura;
        Aura* _removedAura;
        Unit* _caster;
        int32 _duration; // for non-aura dynobjects
        bool _isViewpoint;
};
#endif
