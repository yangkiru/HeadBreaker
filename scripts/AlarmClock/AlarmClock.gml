function AlarmClock() : Artifact() constructor {
	name = "Alarm Clock";
	rank = "C";
	spr = spr_cthun_ball;
	OnInit = function () {
		global.reduce_skill_cool += 0.1;
	}
}