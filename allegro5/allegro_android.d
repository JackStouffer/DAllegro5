module allegro5.allegro_android;

import allegro5.display;
import allegro5.internal.da5;

extern(C)
{
	void al_android_set_apk_file_interface();
	const_char* al_android_get_os_version();
	void _al_android_set_capture_volume_keys(ALLEGRO_DISPLAY* display, bool onoff); 
}
