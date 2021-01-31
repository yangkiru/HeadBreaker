function AlarmClock() : Artifact() constructor {
	name = "Alarm Clock";
	price = 70;
	spr = spr_cthun_ball;
	OnInit = function () {
		global.reduce_skill_cool += 0.1;
	}
}