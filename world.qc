void () InitBodyQue;

void () main = {
    dprint("main function\n");
    precache_file("progs.dat");
    precache_file("gfx.wad");
    precache_file("quake.rc");
    precache_file("default.cfg");
    precache_file("end1.bin");
    precache_file2("end2.bin");
    precache_file("demo1.dem");
    precache_file("demo2.dem");
    precache_file("demo3.dem");
    precache_file("gfx/palette.lmp");
    precache_file("gfx/colormap.lmp");
    precache_file2("gfx/pop.lmp");
    precache_file("gfx/complete.lmp");
    precache_file("gfx/inter.lmp");
    precache_file("gfx/ranking.lmp");
    precache_file("gfx/vidmodes.lmp");
    precache_file("gfx/finale.lmp");
    precache_file("gfx/conback.lmp");
    precache_file("gfx/qplaque.lmp");
    precache_file("gfx/menudot1.lmp");
    precache_file("gfx/menudot2.lmp");
    precache_file("gfx/menudot3.lmp");
    precache_file("gfx/menudot4.lmp");
    precache_file("gfx/menudot5.lmp");
    precache_file("gfx/menudot6.lmp");
    precache_file("gfx/menuplyr.lmp");
    precache_file("gfx/bigbox.lmp");
    precache_file("gfx/dim_modm.lmp");
    precache_file("gfx/dim_drct.lmp");
    precache_file("gfx/dim_ipx.lmp");
    precache_file("gfx/dim_tcp.lmp");
    precache_file("gfx/dim_mult.lmp");
    precache_file("gfx/mainmenu.lmp");
    precache_file("gfx/box_tl.lmp");
    precache_file("gfx/box_tm.lmp");
    precache_file("gfx/box_tr.lmp");
    precache_file("gfx/box_ml.lmp");
    precache_file("gfx/box_mm.lmp");
    precache_file("gfx/box_mm2.lmp");
    precache_file("gfx/box_mr.lmp");
    precache_file("gfx/box_bl.lmp");
    precache_file("gfx/box_bm.lmp");
    precache_file("gfx/box_br.lmp");
    precache_file("gfx/sp_menu.lmp");
    precache_file("gfx/ttl_sgl.lmp");
    precache_file("gfx/ttl_main.lmp");
    precache_file("gfx/ttl_cstm.lmp");
    precache_file("gfx/mp_menu.lmp");
    precache_file("gfx/netmen1.lmp");
    precache_file("gfx/netmen2.lmp");
    precache_file("gfx/netmen3.lmp");
    precache_file("gfx/netmen4.lmp");
    precache_file("gfx/netmen5.lmp");
    precache_file("gfx/sell.lmp");
    precache_file("gfx/help0.lmp");
    precache_file("gfx/help1.lmp");
    precache_file("gfx/help2.lmp");
    precache_file("gfx/help3.lmp");
    precache_file("gfx/help4.lmp");
    precache_file("gfx/help5.lmp");
    precache_file("gfx/pause.lmp");
    precache_file("gfx/loading.lmp");
    precache_file("gfx/p_option.lmp");
    precache_file("gfx/p_load.lmp");
    precache_file("gfx/p_save.lmp");
    precache_file("gfx/p_multi.lmp");
    precache_sound("misc/menu1.wav");
    precache_sound("misc/menu2.wav");
    precache_sound("misc/menu3.wav");
    precache_sound("ambience/water1.wav");
    precache_sound("ambience/wind2.wav");
    precache_file("maps/start.bsp");
    precache_file("maps/e1m1.bsp");
    precache_file("maps/e1m2.bsp");
    precache_file("maps/e1m3.bsp");
    precache_file("maps/e1m4.bsp");
    precache_file("maps/e1m5.bsp");
    precache_file("maps/e1m6.bsp");
    precache_file("maps/e1m7.bsp");
    precache_file("maps/e1m8.bsp");
    precache_file2("gfx/pop.lmp");
    precache_file2("maps/e2m1.bsp");
    precache_file2("maps/e2m2.bsp");
    precache_file2("maps/e2m3.bsp");
    precache_file2("maps/e2m4.bsp");
    precache_file2("maps/e2m5.bsp");
    precache_file2("maps/e2m6.bsp");
    precache_file2("maps/e2m7.bsp");
    precache_file2("maps/e3m1.bsp");
    precache_file2("maps/e3m2.bsp");
    precache_file2("maps/e3m3.bsp");
    precache_file2("maps/e3m4.bsp");
    precache_file2("maps/e3m5.bsp");
    precache_file2("maps/e3m6.bsp");
    precache_file2("maps/e3m7.bsp");
    precache_file2("maps/e4m1.bsp");
    precache_file2("maps/e4m2.bsp");
    precache_file2("maps/e4m3.bsp");
    precache_file2("maps/e4m4.bsp");
    precache_file2("maps/e4m5.bsp");
    precache_file2("maps/e4m6.bsp");
    precache_file2("maps/e4m7.bsp");
    precache_file2("maps/e4m8.bsp");
    precache_file2("maps/end.bsp");
    precache_file2("maps/dm1.bsp");
    precache_file2("maps/dm2.bsp");
    precache_file2("maps/dm3.bsp");
    precache_file2("maps/dm4.bsp");
    precache_file2("maps/dm5.bsp");
    precache_file2("maps/dm6.bsp");
};

entity lastspawn;

void () worldspawn = {
    local string st;

    lastspawn = world;
    number_of_teams = 0;
    InitBodyQue();
    if (self.model == "maps/e1m8.bsp")
        cvar_set("sv_gravity", "100");
    else
        cvar_set("sv_gravity", "800");

    cvar_set("pausable", "0");
    cvar_set("sv_friction", "6");
    cvar_set("sv_waterfriction", "1");
    if (teamplay == 0)
        cvar_set("teamplay", "1");
    localcmd("serverinfo cf_rev \"");
    localcmd(REV);
    localcmd("\"\n");
    localcmd("serverinfo gametype \"cfortress\"\n");

    st = infokey(world, "*sv_gamedir");
    if ((st != string_null) && (st != "fortress"))
        objerror("QW TF must be run with a sv_gamedir of \"fortress\".\n");
    else if (st == string_null) {
        if (infokey(world, "*gamedir") != "fortress")
            objerror
                ("QW TF must be run with a gamedir or sv_gamedir of \"fortress\".\n");
    }

    // get map config execution settings
    st = infokey(world, "exec_map_cfgs");
    if (st == "off")
        exec_map_cfgs = FALSE;
    else
        exec_map_cfgs = TRUE;

    if (exec_map_cfgs) {
        localcmd("exec cfg/default.cfg\n");
        localcmd("exec cfg/maps/");
        localcmd(mapname);
        localcmd(".cfg\n");
    }

    Vote_Reset();

    W_Precache();
    precache_sound("edge/backpack.wav");
    precache_sound("demon/dland2.wav");
    precache_sound("misc/h2ohit1.wav");
    precache_sound("items/itembk2.wav");
    precache_sound("player/plyrjmp8.wav");
    precache_sound("dash.wav");
    precache_sound("player/land.wav");
    precache_sound("player/land2.wav");
    precache_sound("player/drown1.wav");
    precache_sound("player/drown2.wav");
    precache_sound("player/gasp1.wav");
    precache_sound("player/gasp2.wav");
    precache_sound("player/h2odeath.wav");
    precache_sound("misc/talk.wav");
    precache_sound("player/teledth1.wav");
    precache_sound("misc/r_tele1.wav");
    precache_sound("misc/r_tele2.wav");
    precache_sound("misc/r_tele3.wav");
    precache_sound("misc/r_tele4.wav");
    precache_sound("misc/r_tele5.wav");
    precache_sound("weapons/lock4.wav");
    precache_sound("weapons/pkup.wav");
    precache_sound("items/armor1.wav");
    precache_sound("weapons/lhit.wav");
    precache_sound("weapons/lstart.wav");
    precache_sound("items/damage3.wav");
    precache_sound("misc/power.wav");
    precache_sound("player/gib.wav");
    precache_sound("player/udeath.wav");
    precache_sound("player/tornoff2.wav");
    precache_sound("player/pain1.wav");
    precache_sound("player/pain2.wav");
    precache_sound("player/pain3.wav");
    precache_sound("player/pain4.wav");
    precache_sound("player/pain5.wav");
    precache_sound("player/pain6.wav");
    precache_sound("player/death1.wav");
    precache_sound("player/death2.wav");
    precache_sound("player/death3.wav");
    precache_sound("player/death4.wav");
    precache_sound("player/death5.wav");
    precache_sound("boss1/sight1.wav");
    precache_sound("weapons/ax1.wav");
    precache_sound("player/axhit1.wav");
    precache_sound("player/axhit2.wav");
    precache_sound("player/h2ojump.wav");
    precache_sound("player/slimbrn2.wav");
    precache_sound("player/inh2o.wav");
    precache_sound("player/inlava.wav");
    precache_sound("misc/outwater.wav");
    precache_sound("player/lburn1.wav");
    precache_sound("player/lburn2.wav");
    precache_sound("misc/water1.wav");
    precache_sound("misc/water2.wav");
    precache_sound("items/protect.wav");
    precache_sound("items/protect2.wav");
    precache_sound("items/protect3.wav");
    precache_model("progs/player.mdl");
    precache_model("progs/eyes.mdl");
    precache_model("progs/h_player.mdl");
    precache_model("progs/gib1.mdl");
    precache_model("progs/gib2.mdl");
    precache_model("progs/gib3.mdl");
    precache_model("progs/s_bubble.spr");
    precache_model("progs/s_explod.spr");
    precache_model("progs/v_axe.mdl");
    precache_model("progs/v_tranq.mdl");
    precache_model("progs/v_shot.mdl");
    precache_model("progs/v_nail.mdl");
    precache_model("progs/v_rock.mdl");
    precache_model("progs/v_pipe.mdl");
    precache_model("progs/v_flame.mdl");
    precache_model("progs/v_irock.mdl");
    precache_model("progs/v_shot2.mdl");
    precache_model("progs/v_nail2.mdl");
    precache_model("progs/v_rock2.mdl");
    precache_model("progs/grenade.mdl");
    precache_model("progs/bolt.mdl");
    precache_model("progs/bolt2.mdl");
    precache_model("progs/bolt3.mdl");
    precache_model("progs/lavaball.mdl");
    precache_model("progs/missile.mdl");
    precache_model("progs/spike.mdl");
    precache_model("progs/s_spike.mdl");
    precache_model("progs/backpack.mdl");
    precache_model("progs/zom_gib.mdl");
    precache_model("progs/v_light.mdl");
    precache_model2("progs/laser.mdl");
    precache_sound2("enforcer/enfire.wav");
    precache_sound2("enforcer/enfstop.wav");
    precache_sound2("hknight/attack1.wav");
    precache_model2("progs/sight.spr");
    precache_model2("progs/caltrop.mdl");
    precache_model2("progs/cross1.mdl");
    precache_model2("progs/tf_flag.mdl");
    precache_model2("progs/tf_stan.mdl");
    precache_model2("progs/v_medi.mdl");
    precache_model2("progs/hgren2.mdl");
    precache_model2("progs/biggren.mdl");
    precache_model2("progs/flare.mdl");
    precache_model2("progs/v_srifle.mdl");
    precache_model2("progs/v_asscan.mdl");
    precache_model2("progs/detpack.mdl");
    precache_model2("progs/ammobox.mdl");
    precache_model2("progs/v_knife.mdl");
    precache_model2("progs/v_knife2.mdl");
    precache_model2("progs/v_span.mdl");
    precache_model2("progs/e_spike1.mdl");
    precache_model2("progs/e_spike2.mdl");
    precache_model2("progs/v_rail.mdl");
    precache_model2("progs/turrgun.mdl");
    precache_model2("progs/turrbase.mdl");
    precache_model2("progs/tgib1.mdl");
    precache_model2("progs/tgib2.mdl");
    precache_model2("progs/tgib3.mdl");
    precache_model2("progs/disp.mdl");
    precache_model2("progs/dgib1.mdl");
    precache_model2("progs/dgib2.mdl");
    precache_model2("progs/dgib3.mdl");
    precache_model2("progs/grenade2.mdl");
    precache_model2("progs/v_grap.mdl");
    precache_model2("progs/caltrop.mdl");
    precache_sound("doors/baseuse.wav");
    precache_sound("doors/medtry.wav");
    precache_sound2("speech/saveme1.wav");
    precache_sound2("speech/saveme2.wav");
    precache_model2("progs/detpack2.mdl");
    precache_model2("progs/grenade3.mdl");
    precache_sound("grentimer.wav");
    lightstyle(0, "m");
    lightstyle(1, "mmnmmommommnonmmonqnmmo");
    lightstyle(2, "abcdefghijklmnopqrstuvwxyzyxwvutsrqponmlkjihgfedcba");
    lightstyle(3, "mmmmmaaaaammmmmaaaaaabcdefgabcdefg");
    lightstyle(4, "mamamamamama");
    lightstyle(5, "jklmnopqrstuvwxyzyxwvutsrqponmlkj");
    lightstyle(6, "nmonqnmomnmomomno");
    lightstyle(7, "mmmaaaabcdefgmmmmaaaammmaamm");
    lightstyle(8, "mmmaaammmaaammmabcdefaaaammmmabcdefmmmaaaa");
    lightstyle(9, "aaaaaaaazzzzzzzz");
    lightstyle(10, "mmamammmmammamamaaamammma");
    lightstyle(11, "abcdefghijklmnopqrrqponmlkjihgfedcba");
    lightstyle(63, "a");
};

void () StartFrame = {
    teamplay = cvar("teamplay");
    timelimit = cvar("timelimit") * 60;
    fraglimit = cvar("fraglimit");
    deathmatch = cvar("deathmatch");
    framecount = framecount + 1;
    Vote_Check();
};

entity bodyque_head;

void () bodyque = {
};

void () InitBodyQue = {
    bodyque_head = spawn();
    bodyque_head.classname = "bodyque";
    bodyque_head.owner = spawn();
    bodyque_head.owner.classname = "bodyque";
    bodyque_head.owner.owner = spawn();
    bodyque_head.owner.owner.classname = "bodyque";
    bodyque_head.owner.owner.owner = spawn();
    bodyque_head.owner.owner.owner.classname = "bodyque";
    bodyque_head.owner.owner.owner.owner = bodyque_head;

};

void (entity ent) CopyToBodyQue = {
    if ((cb_prematch_time + 3) > time)
        return;

    bodyque_head.angles = ent.angles;
    bodyque_head.model = ent.model;
    bodyque_head.skin = ent.skin;
    bodyque_head.modelindex = ent.modelindex;
    bodyque_head.frame = ent.frame;
    bodyque_head.colormap = ent.colormap;
    bodyque_head.movetype = ent.movetype;
    bodyque_head.velocity = ent.velocity;
    bodyque_head.flags = 0;
    setorigin(bodyque_head, ent.origin);
    setsize(bodyque_head, ent.mins, ent.maxs);
    bodyque_head = bodyque_head.owner;
};
