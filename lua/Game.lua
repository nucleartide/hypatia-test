local Game = {}
Game.Vec2 = (function(_v1)
             return (function(_v2)
                     return {Game.Vec2, _v1, _v2}
                     end)
             end)
Game.Player = (function(_v1)
               return (function(_v2)
                       return (function(_v3)
                               return {Game.Player, _v1, _v2, _v3}
                               end)
                       end)
               end)
Game.player_draw = (function(_vl)
                    if Native.isArray(_vl) and Native.eq(Native.size(_vl))(4.0) and Native.eq(_vl[1])(Game.Player) and Native.isArray(_vl[2]) and Native.eq(Native.size(_vl[2]))(3.0) and Native.eq(_vl[2][1])(Game.Vec2) then
                    local x
                    local y
                    local w
                    local h
                    x = _vl[2][2]
                    y = _vl[2][3]
                    w = _vl[3]
                    h = _vl[4]
                    return Game.rectfill(x)(y)(Game.plus(Game.plus(x)(w))(-1.0))(Game.plus(Game.plus(y)(h))(-1.0))(14.0)
                    end
                    return Native.error("failed pattern match lambda at [line 47, column 14, len 6 in \"Game.hs\",\n line 47, column 22, len 4 in \"Game.hs\",\n line 47, column 27, len 1 in \"Game.hs\",\n line 47, column 29, len 1 in \"Game.hs\",\n line 47, column 32, len 1 in \"Game.hs\",\n line 47, column 34, len 1 in \"Game.hs\"]")
                    end)
Game.player_update = (function(_vl)
                      if Native.isArray(_vl) and Native.eq(Native.size(_vl))(4.0) and Native.eq(_vl[1])(Game.Player) and Native.isArray(_vl[2]) and Native.eq(Native.size(_vl[2]))(3.0) and Native.eq(_vl[2][1])(Game.Vec2) then
                      local x
                      local y
                      local w
                      local h
                      x = _vl[2][2]
                      y = _vl[2][3]
                      w = _vl[3]
                      h = _vl[4]
                      if Game.btn(0.0) then
                      return Game.Player(Game.Vec2(Game.minus(x)(1.0))(y))(w)(h)
                      else
                      if Game.btn(1.0) then
                      return Game.Player(Game.Vec2(Game.plus(x)(1.0))(y))(w)(h)
                      else
                      if Game.btn(2.0) then
                      return Game.Player(Game.Vec2(x)(Game.minus(y)(1.0)))(w)(h)
                      else
                      if Game.btn(3.0) then
                      return Game.Player(Game.Vec2(x)(Game.plus(y)(1.0)))(w)(h)
                      else
                      return Game.Player(Game.Vec2(x)(y))(w)(h)
                      end
                      end
                      end
                      end
                      end
                      return Native.error("failed pattern match lambda at [line 34, column 16, len 6 in \"Game.hs\",\n line 34, column 24, len 4 in \"Game.hs\",\n line 34, column 29, len 1 in \"Game.hs\",\n line 34, column 31, len 1 in \"Game.hs\",\n line 34, column 34, len 1 in \"Game.hs\",\n line 34, column 36, len 1 in \"Game.hs\"]")
                      end)
return Game