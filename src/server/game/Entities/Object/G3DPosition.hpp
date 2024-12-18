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

#ifndef FIRELANDS_G3DPOSITION_HPP
#define FIRELANDS_G3DPOSITION_HPP

#include "Position.h"
#include <G3D/Vector3.h>
#include "Errors.h"

inline G3D::Vector3 PositionToVector3(Position p) { return { p.m_positionX, p.m_positionY, p.m_positionZ }; }
inline G3D::Vector3 PositionToVector3(Position const* p) { return { ASSERT_NOTNULL(p)->m_positionX, p->m_positionY, p->m_positionZ }; }
inline Position Vector3ToPosition(G3D::Vector3 v) { return { v.x, v.y, v.z }; }

#endif
