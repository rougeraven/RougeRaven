// ==UserScript==
// @name         Krunker Powered WheelChair
// @namespace    https://github.com/hrt
// @version      1.8.8
// @description  WheelChair
// @author       hrt x ttap x MasterP
// @match        *://krunker.io/*
// @run-at       document-start
// @require      https://ajax.googleapis.com/ajax/libs/webfont/1/webfont.js
// @require      https://krunkr.com/assets/js/canvas.gui.js?ver=0.6
// @grant        none
// ==/UserScript==
WebFont.load({
    google: {
        families: ['Roboto']
    }
});
(function () {
    const replace = String.prototype.replace;
    function conceal_function(original_Function, hook_Function) {
        var anti_map = [];
        var original_toString = Function.prototype.toString;

        function hook_toString(...args) {
            for (var i = 0; i < anti_map.length; i++) {
                if (anti_map[i].from === this) {
                    return anti_map[i].to;
                }
            }
            return original_toString.apply(this, args);
        }
        anti_map.push({
            from: hook_Function,
            to: original_Function.toString()
        });
        anti_map.push({
            from: hook_toString,
            to: original_toString.toString()
        });
        Function.prototype.toString = hook_toString;
    };
    const options = {
        aimbot: true,
        silentAim: false,
        boxEsp: true,
        boxColor: "rgba(244,100,80,1)",
        weaponEsp: true,
        healthEsp: true,
        nameEsp: true,
        chams: true,
        autoReload: true,
        autoJump: true,
        chamsColorStr: "rgba(255,0,0,1)",
        chamsRed: 255,
        chamsBlue: 0,
        chamsGreen: 0,
    };
    window.options = options;
    const styles = {
        fontFamily: "Roboto",
        itemHeight: 28,
        setup: {
            background: "#0B132B",
            color: "#4c698d",
            fontSize: "16px",
            header: {
                color: "#839cbc",
                fontSize: "20px",
                borderBottom: "#3A506B",
                paddingBottom: 20
            },
            steps: {
                background: "white",
                selected: "#5BC0BE",
            }
        },
        profiles: {
            background: "#090F22",
            borderBottom: "#4c698d"
        },
        folder: {
            header: {
                color: "#4c698d",
                fontSize: "15.4px",
                background: "#0B132B"
            }
        },
        item: {
            color: "#839cbc",
            fontSize: "13.2px",
            background: "#1C2541"
        },
        button: {
            background: "#1C2541",
            lineTop: "#5BC0BE",
            color: "#4c698d",
            hovered: "#5BC0BE",
            hoveredColor: "#242f53"
        },
        checkbox: {
            background: "#242f53",
            checkedBg: "#5BC0BE",
            hovered: "rgba(91,192,190,0.3)",
            width: 18,
            height: 18
        },
        input: {
            background: "#242f53",
            color: "#4c698d",
            cursor: "#839cbc",
            width: 120,
            height: 22
        },
        select: {
            background: "#242f53",
            color: "#4c698d",
            hovered: "#3A506B",
            width: 80,
            height: 20,
        },
        option: {
            background: "#242f53",
            color: "#4c698d",
            hovered: "#3A506B",
            hoveredColor: "white",
            outline: "#0B132B"
        },
        slider: {
            background: "#242f53",
            color: "#5BC0BE",
            slider: "#5BC0BE",
            hovered: "#3A506B",
            width: 89,
            height: 20,
            leftPadding: 100,
            input: {
                width: 43,
            }
        }
    }

    const menu = new MyGUI(false, 0, 0, 250, 250, styles, "wheelchair", 1)

    menu.remember(window.options)
    window.menu = menu;
    const poweredWheelAimbot = menu.addFolder("Aimbot", true)
    const poweredWheelVisuals = menu.addFolder("Visuals", true)
    const poweredWheelOther = menu.addFolder("Other", true)

    poweredWheelAimbot.add("Aimbot", window.options, "aimbot", "Check")
    poweredWheelAimbot.add("Silent Aim", window.options, "silentAim", "Check")
    poweredWheelAimbot.add("Auto Reload", window.options, "autoReload", "Check")
    poweredWheelVisuals.add("Name Esp", window.options, "nameEsp", "Check")
    poweredWheelVisuals.add("Box Esp", window.options, "boxEsp", "Check")
    poweredWheelVisuals.add("Weapon Esp", window.options, "weaponEsp", "Check")
    poweredWheelVisuals.add("Health Esp", window.options, "healthEsp", "Check")
    poweredWheelVisuals.add("Chams", window.options, "chams", "Check")
    poweredWheelVisuals.add("Box Color", window.options, "boxColor", "Color")
    poweredWheelOther.add("Auto Jump", window.options, "autoJump", "Check")
    poweredWheelVisuals.add("Chams Color", window.options, "chamsColorStr", "Color")
        .onChange((val) => {
            const {
                1: r,
                2: g,
                3: b
            } = val.match(/rgba\((\d+),(\d+),(\d+),\d+\)/)
            window.options.chamsRed = (r - 0) / (255 - 0)
            window.options.chamsGreen = (g - 0) / (255 - 0)
            window.options.chamsBlue = (b - 0) / (255 - 0)
        })
    // no longer public offset finding
    var inputs = "cEE";
    var world = "cEy";
    var consts = "cDv";
    var me = "cEA";
    var math = "cEp";
    var hrtCheat = function (me, inputs, world, consts, math, conceal_function) {
        /* Wanna update yourself? Write a script which finds these */
        var canSee = "BwftfwWS";
        var getDir = "ujHYahTl";
        var getXDire = "SbPUccYE";
        var getDistance = "kwpNBTcj";
        var getD3D = "OmPMwAzs";
        var pchObjc = "vKPtJVFI";
        var objInstances = "eKoEYKcC";
        var playerScale = "playerScale";
        var isYou = "OFnPTTpe";
        var recoilAnimY = "psKrGopm";
        var playerHeight = "playerHeight";
        var mouseDownL = "sMTFGWrl";
        var mouseDownR = "hhLaRzBY";
        var controls = world.controls;
        const SHOOT = 5,
            SCOPE = 6,
            xDr = 3,
            yDr = 2,
            JUMP = 7,
            CROUCH = 8;
        var isEnemy = function (player) {
            return !me.team || player.team != me.team
        };
        var canHit = function (player) {
            return null == world[canSee](me, player.x3, player.y3 - player.crouchVal * consts.crouchDst, player.z3)
        };
        var normaliseYaw = function (yaw) {
            return (yaw % Math.PI2 + Math.PI2) % Math.PI2;
        };
        var dAngleTo = function (x, y, z) {
            var ty = normaliseYaw(math[getDir](controls.object.position.z, controls.object.position.x, z, x));
            var tx = math[getXDire](controls.object.position.x, controls.object.position.y, controls.object.position.z, x, y, z);
            var oy = normaliseYaw(controls.object.rotation.y);
            var ox = controls[pchObjc].rotation.x;
            var dYaw = Math.min(Math.abs(ty - oy), Math.abs(ty - oy - Math.PI2), Math.abs(ty - oy + Math.PI2));
            var dPitch = tx - ox;
            return Math.hypot(dYaw, dPitch);
        };
        var calcAngleTo = function (player) {
            return dAngleTo(e.x3, e.y3 + consts[playerHeight] - (consts.headScale + consts.hitBoxPad) / 2 - e.crouchVal * consts.crouchDst, e.z3);
        };
        var calcDistanceTo = function (player) {
            return math[getD3D](player.x3, player.y3, player.z3, me.x, me.y, me.z)
        };
        var isCloseEnough = function (player) {
            var distance = calcDistanceTo(player);
            return me.weapon.range >= distance && ("Shotgun" != me.weapon.name || distance < 70) && ("Akimbo Uzi" != me.weapon.name || distance < 100);
        };
        var haveAmmo = function () {
            return !(me.ammos[me.weaponIndex] !== undefined && me.ammos[me.weaponIndex] == 0);
        };
        // runs once
        if (!window.init) {
            window.init = true;
            /*************************************/
            /* crimpeek / faster bullets removed */
            /*************************************/
            var drawVisuals = function (c) {
                if (!arguments.callee.caller.caller.arguments[0] || !arguments.callee.caller.caller.arguments[2]) return;
                var scalingFactor = arguments.callee.caller.caller.arguments[0];
                var perspective = arguments.callee.caller.caller.arguments[2];
                if (!perspective && !perspective.camera) return;
                var scaledWidth = c.canvas.width / scalingFactor;
                var scaledHeight = c.canvas.height / scalingFactor;
                var worldPosition = perspective.camera.getWorldPosition();
                for (var i = 0; i < world.players.list.length; i++) {
                    var player = world.players.list[i];
                    var e = players[i];
                    if (e[isYou] || !e.active || !e[objInstances] || !isEnemy(e)) {
                        continue;
                    }
                    // find min x, max x, min y, max y
                    // optimisation: we can already tell what ymin ymax is
                    var xmin = Infinity;
                    var xmax = -Infinity;
                    var ymin = Infinity;
                    var ymax = -Infinity;
                    var br = false;
                    for (var j = -1; !br && j < 2; j += 2) {
                        for (var k = -1; !br && k < 2; k += 2) {
                            for (var l = 0; !br && l < 2; l++) {
                                var position = e[objInstances].position.clone();
                                position.x += j * consts[playerScale];
                                position.z += k * consts[playerScale];
                                position.y += l * (consts[playerHeight] - e.crouchVal * consts.crouchDst);
                                if (!perspective.frustum.containsPoint(position)) {
                                    br = true;
                                    break;
                                }
                                position.project(perspective.camera);
                                xmin = Math.min(xmin, position.x);
                                xmax = Math.max(xmax, position.x);
                                ymin = Math.min(ymin, position.y);
                                ymax = Math.max(ymax, position.y);
                            }
                        }
                    }

                    if (br) {
                        continue;
                    }

                    xmin = (xmin + 1) / 2;
                    ymin = (ymin + 1) / 2;
                    xmax = (xmax + 1) / 2;
                    ymax = (ymax + 1) / 2;


                    c.save();
                    // perfect box esp

                    var distanceScale = Math.max(.3, 1 - math[getD3D](worldPosition.x, worldPosition.y, worldPosition.z, e.x, e.y, e.z) / 600);
                    c.scale(distanceScale, distanceScale);
                    var xScale = scaledWidth / distanceScale;
                    var yScale = scaledHeight / distanceScale;
                    ymin = yScale * (1 - ymin);
                    ymax = yScale * (1 - ymax);
                    xmin = xScale * xmin;
                    xmax = xScale * xmax;
                    if (window.options.boxEsp) {
                        c.lineWidth = 5;
                        c.strokeStyle = window.options.boxColor;
                        c.beginPath();
                        c.moveTo(xmin, ymin);
                        c.lineTo(xmin, ymax);
                        c.lineTo(xmax, ymax);
                        c.lineTo(xmax, ymin);
                        c.lineTo(xmin, ymin);
                        c.stroke();
                    }
                    // health bar
                    if (window.options.healthEsp) {
                        c.fillStyle = "rgba(255,50,50,1)";
                        var barMaxHeight = ymax - ymin;
                        c.fillRect(xmin - 7, ymin, -10, barMaxHeight);
                        c.fillStyle = "#00FFFF";
                        c.fillRect(xmin - 7, ymin, -10, barMaxHeight * (e.health / e.maxHealth));
                    }
                    // info
                    var x = xmax + 7;
                    var y = ymax;
                    c.fillStyle = "white";
                    c.strokeStyle = 'black';
                    c.lineWidth = 1;
                    if (window.options.nameEsp) {
                        c.font = "60px Roboto";
                        c.fillText(e.name, x, y);
                        c.strokeText(e.name, x, y);
                    }
                    c.font = "30px Sans-serif";
                    if (window.options.weaponEsp) {
                        y += 35;
                        c.fillText(e.weapon.name, x, y);
                        c.strokeText(e.weapon.name, x, y);
                    }
                    if (window.options.healthEsp) {
                        y += 35;
                        c.fillText(e.health + ' HP', x, y);
                        c.strokeText(e.health + ' HP', x, y);
                    }
                    c.restore();

                    // skelly chams
                    // note: this should probably be else where - it affects all players
                    var material = e.legMeshes[0].material;
                    if (window.options.chams) {
                        material.alphaTest = 1;
                        material.depthTest = false;
                        material.fog = false;
                        material.emissive.r = window.options.chamsRed
                        material.emissive.g = window.options.chamsGreen
                        material.emissive.b = window.options.chamsBlue
                        material.wireframe = true;
                    } else if (!window.options.chams) {
                        material.alphaTest = 0;
                        material.depthTest = true;
                        material.fog = true;
                        material.emissive.r = 0;
                        material.emissive.g = 0;
                        material.emissive.b = 0;
                        material.wireframe = false;
                    }
                }
            }
            // render all the visuals
            var original_clearRect = CanvasRenderingContext2D.prototype.clearRect;
            var hook_clearRect = function (...args) {

                if (arguments.length === 5) {
                    original_clearRect.apply(this, args);
                } else {
                    drawVisuals(this);

                }

            };
            var original_scale = CanvasRenderingContext2D.prototype.scale;
            var hook_scale = function (...args) {

                original_scale.apply(this, args);
                //                console.log(arguments[0])
                if (uiBase.style.transform.match(/scale\((.+)\)/)[1] === arguments[0].toFixed(3)) {
                    this.save();
                    this.setTransform(1, 0, 0, 1, 0, 0);
                    window.menu.draw(this, true)
                    this.restore()
                }

            };
            conceal_function(original_clearRect, hook_clearRect);
            conceal_function(original_scale, original_scale);
            CanvasRenderingContext2D.prototype.scale = hook_scale;

            CanvasRenderingContext2D.prototype.clearRect = hook_clearRect;

        }

        // auto reload
        if (window.options.autoReload) controls.keys[controls.reloadKey] = !haveAmmo();
        // auto jump
        if (window.options.autoJump) inputs[JUMP] = (controls.keys[controls.jumpKey] && !me.didJump) * 1;
        // target selector - based on closest to aim
        var closest = null,
            closestAngle = Infinity;
        var players = world.players.list;


        if (!window.options.aimbot) return;
        for (var i = 0; me.active && i < players.length; i++) {
            var e = players[i];
            if (e[isYou] || !e.active || !e[objInstances] || !isEnemy(e)) {
                continue;
            }

            // experimental prediction removed - otherwise they'd be in x3 y3 z3
            e.x3 = e.x;
            e.y3 = e.y;
            e.z3 = e.z;

            if (!isCloseEnough(e) || !canHit(e)) {
                continue;
            }


            var angle = calcAngleTo(e);
            if (angle < closestAngle) {
                closestAngle = angle;
                closest = e;
            }
        }



        // aimbot
        // hrt's big brain got a six pack
        var ty = controls.object.rotation.y,
            tx = controls[pchObjc].rotation.x;
        if (closest) {
            var target = closest;
            // No idea why public cheats are using target distance in aimbot calc
            // No idea why it's so difficult for people to not use magic numbers here
            var y = target.y3 + consts[playerHeight] - (consts.headScale /* + consts.hitBoxPad*/ ) / 2 - target.crouchVal * consts.crouchDst;
            if (me.weapon.nAuto && me.didShoot) {
                inputs[SHOOT] = 0;
            } else if (!me.aimVal) { // me.recoilAnimY < 0.1 - if you want to shoot more slower and perhaps more accurately
                // inputs[CROUCH] = 1; // auto crouch
                inputs[SHOOT] = 1;
                inputs[SCOPE] = 1;
            } else {
                // inputs[CROUCH] = 1; // auto crouch
                inputs[SCOPE] = 1;
            }

            ty = math[getDir](controls.object.position.z, controls.object.position.x, target.z3, target.x3);
            tx = math[getXDire](controls.object.position.x, controls.object.position.y, controls.object.position.z, target.x3, y, target.z3);

            // perfect recoil control..?
            tx -= .3 * me[recoilAnimY];
        } else {
            inputs[SHOOT] = controls[mouseDownL];
            inputs[SCOPE] = controls[mouseDownR];
            // inputs[CROUCH] = controls.keys[controls.crouchKey] * 1; // auto crouch
        }

        // silent aim
        const newY = (ty % Math.PI2).round(3);
        const newX = (tx % Math.PI2).round(3);
        inputs[xDr] = newX;
        inputs[yDr] = newY;
        if (!window.options.silentAim) {
            controls.object.rotation.y = newY
            controls[pchObjc].rotation.x = newX
        }

    }
    // only big iq people read this ttap#4547
    // big up my boy hrt and ttap for releasing
    const handler = {
        construct(target, args) {
            if (args.length == 2 && args[1].length > 1337) {
                var script = args[1];

                // anti anti chet
                var version = script.match(/\w+\['exports'\]=(0[xX][0-9a-fA-F]+);/)[1];
                if (version !== "0x16589") {
                    window[atob('ZG9jdW1lbnQ=')][atob('d3JpdGU=')](atob('VmVyc2lvbiBtaXNzbWF0Y2gg') + version);
                    window[atob('bG9jYX' + 'Rpb24' + '=')][atob('aHJ' + 'lZg=' + '=')] = atob('aHR0cHM6' + 'Ly9naXRodWIuY2' + '9tL2hydC93aGVlb' + 'GNoYWly');
                }

                var hook = /(\w+)\['tmpInpts'\]\['push'\]\((\w+)\),/;
                var tokens = script.match(hook);
                var ttapParams = [me, inputs, world, consts, math, conceal_function.toString()];

                // Doesn't make sense to hook aimbot anywhere else - unlike every other public cheat
                script = replace.call(script, hook, tokens[0] + '(' + hrtCheat.toString() + ')(' + ttapParams + '),');

                // all weapons trails on
                //script = replace.call(script, /\w+\['weapon'\]&&\w+\['weapon'\]\['trail'\]/g, "true")

                // color blind mode
                //script = replace.call(script, /#9eeb56/g, '#00FFFF');

                // no zoom
                //script = replace.call(script, /,'zoom':.+?(?=,)/g, ",'zoom':1");


                args[1] = script;
            }
            return new target(...args);
        }
    };
    // credits for bypass: https://github.com/hrt/
    var original_Function = Function;
    var hook_Function = new Proxy(Function, handler);
    conceal_function(original_Function, hook_Function);
    Function = hook_Function;
})()
