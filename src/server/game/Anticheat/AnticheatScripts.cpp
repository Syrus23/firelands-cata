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

#include "AnticheatScripts.h"
#include "AnticheatMgr.h"
#include "World.h"

AnticheatScripts::AnticheatScripts(): PlayerScript("AnticheatScripts") {}

void AnticheatScripts::OnLogout(Player* player)
{
    sAnticheatMgr->HandlePlayerLogout(player);
}

void AnticheatScripts::OnLogin(Player* player,bool)
{
    sAnticheatMgr->HandlePlayerLogin(player);
}

void AnticheatScripts::OnUpdate(Player* player, uint32 diff)
{
    if (!sWorld->getBoolConfig(CONFIG_ANTICHEAT_OP_ACK_HACK_ENABLE) && !sWorld->getBoolConfig(CONFIG_ANTICHEAT_ENABLE))
    {
        return;
    }

    sAnticheatMgr->AckUpdate(player, diff);
}
