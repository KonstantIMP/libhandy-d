/*
 * This file is part of d-handy.
 *
 * d-handy is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License
 * as published by the Free Software Foundation; either version 3
 * of the License, or (at your option) any later version, with
 * some exceptions, please read the COPYING file.
 *
 * d-handy is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with d-handy; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110, USA
 */
module handy.c.functions;

import std.stdio;
import handy.c.types;
import gtkd.Loader;

version (Windows)
	static immutable LIBRARY_HANDY = ["libhandy-1-0.dll;handy-1-1.0.dll;handy-1.dll"];
else version (OSX)
	static immutable LIBRARY_HANDY = ["libhandy-1.0.dylib"];
else
	static immutable LIBRARY_HANDY = ["libhandy-1.so.0"];

shared static this()
{
	// handy.ActionRow

	Linker.link(hdy_action_row_get_type, "hdy_action_row_get_type", LIBRARY_HANDY);
	Linker.link(hdy_action_row_new, "hdy_action_row_new", LIBRARY_HANDY);
	Linker.link(hdy_action_row_activate, "hdy_action_row_activate", LIBRARY_HANDY);
	Linker.link(hdy_action_row_add_prefix, "hdy_action_row_add_prefix", LIBRARY_HANDY);
	Linker.link(hdy_action_row_get_activatable_widget, "hdy_action_row_get_activatable_widget", LIBRARY_HANDY);
	Linker.link(hdy_action_row_get_icon_name, "hdy_action_row_get_icon_name", LIBRARY_HANDY);
	Linker.link(hdy_action_row_get_subtitle, "hdy_action_row_get_subtitle", LIBRARY_HANDY);
	Linker.link(hdy_action_row_get_use_underline, "hdy_action_row_get_use_underline", LIBRARY_HANDY);
	Linker.link(hdy_action_row_set_activatable_widget, "hdy_action_row_set_activatable_widget", LIBRARY_HANDY);
	Linker.link(hdy_action_row_set_icon_name, "hdy_action_row_set_icon_name", LIBRARY_HANDY);
	Linker.link(hdy_action_row_set_subtitle, "hdy_action_row_set_subtitle", LIBRARY_HANDY);
	Linker.link(hdy_action_row_set_use_underline, "hdy_action_row_set_use_underline", LIBRARY_HANDY);

	// handy.ApplicationWindow

	Linker.link(hdy_application_window_get_type, "hdy_application_window_get_type", LIBRARY_HANDY);
	Linker.link(hdy_application_window_new, "hdy_application_window_new", LIBRARY_HANDY);

	// handy.Avatar

	Linker.link(hdy_avatar_get_type, "hdy_avatar_get_type", LIBRARY_HANDY);
	Linker.link(hdy_avatar_new, "hdy_avatar_new", LIBRARY_HANDY);
	Linker.link(hdy_avatar_get_icon_name, "hdy_avatar_get_icon_name", LIBRARY_HANDY);
	Linker.link(hdy_avatar_get_show_initials, "hdy_avatar_get_show_initials", LIBRARY_HANDY);
	Linker.link(hdy_avatar_get_size, "hdy_avatar_get_size", LIBRARY_HANDY);
	Linker.link(hdy_avatar_get_text, "hdy_avatar_get_text", LIBRARY_HANDY);
	Linker.link(hdy_avatar_set_icon_name, "hdy_avatar_set_icon_name", LIBRARY_HANDY);
	Linker.link(hdy_avatar_set_image_load_func, "hdy_avatar_set_image_load_func", LIBRARY_HANDY);
	Linker.link(hdy_avatar_set_show_initials, "hdy_avatar_set_show_initials", LIBRARY_HANDY);
	Linker.link(hdy_avatar_set_size, "hdy_avatar_set_size", LIBRARY_HANDY);
	Linker.link(hdy_avatar_set_text, "hdy_avatar_set_text", LIBRARY_HANDY);

	// handy.Carousel

	Linker.link(hdy_carousel_get_type, "hdy_carousel_get_type", LIBRARY_HANDY);
	Linker.link(hdy_carousel_new, "hdy_carousel_new", LIBRARY_HANDY);
	Linker.link(hdy_carousel_get_allow_mouse_drag, "hdy_carousel_get_allow_mouse_drag", LIBRARY_HANDY);
	Linker.link(hdy_carousel_get_animation_duration, "hdy_carousel_get_animation_duration", LIBRARY_HANDY);
	Linker.link(hdy_carousel_get_interactive, "hdy_carousel_get_interactive", LIBRARY_HANDY);
	Linker.link(hdy_carousel_get_n_pages, "hdy_carousel_get_n_pages", LIBRARY_HANDY);
	Linker.link(hdy_carousel_get_position, "hdy_carousel_get_position", LIBRARY_HANDY);
	Linker.link(hdy_carousel_get_reveal_duration, "hdy_carousel_get_reveal_duration", LIBRARY_HANDY);
	Linker.link(hdy_carousel_get_spacing, "hdy_carousel_get_spacing", LIBRARY_HANDY);
	Linker.link(hdy_carousel_insert, "hdy_carousel_insert", LIBRARY_HANDY);
	Linker.link(hdy_carousel_prepend, "hdy_carousel_prepend", LIBRARY_HANDY);
	Linker.link(hdy_carousel_reorder, "hdy_carousel_reorder", LIBRARY_HANDY);
	Linker.link(hdy_carousel_scroll_to, "hdy_carousel_scroll_to", LIBRARY_HANDY);
	Linker.link(hdy_carousel_scroll_to_full, "hdy_carousel_scroll_to_full", LIBRARY_HANDY);
	Linker.link(hdy_carousel_set_allow_mouse_drag, "hdy_carousel_set_allow_mouse_drag", LIBRARY_HANDY);
	Linker.link(hdy_carousel_set_animation_duration, "hdy_carousel_set_animation_duration", LIBRARY_HANDY);
	Linker.link(hdy_carousel_set_interactive, "hdy_carousel_set_interactive", LIBRARY_HANDY);
	Linker.link(hdy_carousel_set_reveal_duration, "hdy_carousel_set_reveal_duration", LIBRARY_HANDY);
	Linker.link(hdy_carousel_set_spacing, "hdy_carousel_set_spacing", LIBRARY_HANDY);

	// handy.CarouselIndicatorDots

	Linker.link(hdy_carousel_indicator_dots_get_type, "hdy_carousel_indicator_dots_get_type", LIBRARY_HANDY);
	Linker.link(hdy_carousel_indicator_dots_new, "hdy_carousel_indicator_dots_new", LIBRARY_HANDY);
	Linker.link(hdy_carousel_indicator_dots_get_carousel, "hdy_carousel_indicator_dots_get_carousel", LIBRARY_HANDY);
	Linker.link(hdy_carousel_indicator_dots_set_carousel, "hdy_carousel_indicator_dots_set_carousel", LIBRARY_HANDY);

	// handy.CarouselIndicatorLines

	Linker.link(hdy_carousel_indicator_lines_get_type, "hdy_carousel_indicator_lines_get_type", LIBRARY_HANDY);
	Linker.link(hdy_carousel_indicator_lines_new, "hdy_carousel_indicator_lines_new", LIBRARY_HANDY);
	Linker.link(hdy_carousel_indicator_lines_get_carousel, "hdy_carousel_indicator_lines_get_carousel", LIBRARY_HANDY);
	Linker.link(hdy_carousel_indicator_lines_set_carousel, "hdy_carousel_indicator_lines_set_carousel", LIBRARY_HANDY);

	// handy.Clamp

	Linker.link(hdy_clamp_get_type, "hdy_clamp_get_type", LIBRARY_HANDY);
	Linker.link(hdy_clamp_new, "hdy_clamp_new", LIBRARY_HANDY);
	Linker.link(hdy_clamp_get_maximum_size, "hdy_clamp_get_maximum_size", LIBRARY_HANDY);
	Linker.link(hdy_clamp_get_tightening_threshold, "hdy_clamp_get_tightening_threshold", LIBRARY_HANDY);
	Linker.link(hdy_clamp_set_maximum_size, "hdy_clamp_set_maximum_size", LIBRARY_HANDY);
	Linker.link(hdy_clamp_set_tightening_threshold, "hdy_clamp_set_tightening_threshold", LIBRARY_HANDY);

	// handy.ComboRow

	Linker.link(hdy_combo_row_get_type, "hdy_combo_row_get_type", LIBRARY_HANDY);
	Linker.link(hdy_combo_row_new, "hdy_combo_row_new", LIBRARY_HANDY);
	Linker.link(hdy_combo_row_bind_model, "hdy_combo_row_bind_model", LIBRARY_HANDY);
	Linker.link(hdy_combo_row_bind_name_model, "hdy_combo_row_bind_name_model", LIBRARY_HANDY);
	Linker.link(hdy_combo_row_get_model, "hdy_combo_row_get_model", LIBRARY_HANDY);
	Linker.link(hdy_combo_row_get_selected_index, "hdy_combo_row_get_selected_index", LIBRARY_HANDY);
	Linker.link(hdy_combo_row_get_use_subtitle, "hdy_combo_row_get_use_subtitle", LIBRARY_HANDY);
	Linker.link(hdy_combo_row_set_for_enum, "hdy_combo_row_set_for_enum", LIBRARY_HANDY);
	Linker.link(hdy_combo_row_set_get_name_func, "hdy_combo_row_set_get_name_func", LIBRARY_HANDY);
	Linker.link(hdy_combo_row_set_selected_index, "hdy_combo_row_set_selected_index", LIBRARY_HANDY);
	Linker.link(hdy_combo_row_set_use_subtitle, "hdy_combo_row_set_use_subtitle", LIBRARY_HANDY);

	// handy.Deck

	Linker.link(hdy_deck_get_type, "hdy_deck_get_type", LIBRARY_HANDY);
	Linker.link(hdy_deck_new, "hdy_deck_new", LIBRARY_HANDY);
	Linker.link(hdy_deck_get_adjacent_child, "hdy_deck_get_adjacent_child", LIBRARY_HANDY);
	Linker.link(hdy_deck_get_can_swipe_back, "hdy_deck_get_can_swipe_back", LIBRARY_HANDY);
	Linker.link(hdy_deck_get_can_swipe_forward, "hdy_deck_get_can_swipe_forward", LIBRARY_HANDY);
	Linker.link(hdy_deck_get_child_by_name, "hdy_deck_get_child_by_name", LIBRARY_HANDY);
	Linker.link(hdy_deck_get_homogeneous, "hdy_deck_get_homogeneous", LIBRARY_HANDY);
	Linker.link(hdy_deck_get_interpolate_size, "hdy_deck_get_interpolate_size", LIBRARY_HANDY);
	Linker.link(hdy_deck_get_transition_duration, "hdy_deck_get_transition_duration", LIBRARY_HANDY);
	Linker.link(hdy_deck_get_transition_running, "hdy_deck_get_transition_running", LIBRARY_HANDY);
	Linker.link(hdy_deck_get_transition_type, "hdy_deck_get_transition_type", LIBRARY_HANDY);
	Linker.link(hdy_deck_get_visible_child, "hdy_deck_get_visible_child", LIBRARY_HANDY);
	Linker.link(hdy_deck_get_visible_child_name, "hdy_deck_get_visible_child_name", LIBRARY_HANDY);
	Linker.link(hdy_deck_navigate, "hdy_deck_navigate", LIBRARY_HANDY);
	Linker.link(hdy_deck_set_can_swipe_back, "hdy_deck_set_can_swipe_back", LIBRARY_HANDY);
	Linker.link(hdy_deck_set_can_swipe_forward, "hdy_deck_set_can_swipe_forward", LIBRARY_HANDY);
	Linker.link(hdy_deck_set_homogeneous, "hdy_deck_set_homogeneous", LIBRARY_HANDY);
	Linker.link(hdy_deck_set_interpolate_size, "hdy_deck_set_interpolate_size", LIBRARY_HANDY);
	Linker.link(hdy_deck_set_transition_duration, "hdy_deck_set_transition_duration", LIBRARY_HANDY);
	Linker.link(hdy_deck_set_transition_type, "hdy_deck_set_transition_type", LIBRARY_HANDY);
	Linker.link(hdy_deck_set_visible_child, "hdy_deck_set_visible_child", LIBRARY_HANDY);
	Linker.link(hdy_deck_set_visible_child_name, "hdy_deck_set_visible_child_name", LIBRARY_HANDY);

	// handy.EnumValueObject

	Linker.link(hdy_enum_value_object_get_type, "hdy_enum_value_object_get_type", LIBRARY_HANDY);
	Linker.link(hdy_enum_value_object_new, "hdy_enum_value_object_new", LIBRARY_HANDY);
	Linker.link(hdy_enum_value_object_get_name, "hdy_enum_value_object_get_name", LIBRARY_HANDY);
	Linker.link(hdy_enum_value_object_get_nick, "hdy_enum_value_object_get_nick", LIBRARY_HANDY);
	Linker.link(hdy_enum_value_object_get_value, "hdy_enum_value_object_get_value", LIBRARY_HANDY);

	// handy.ExpanderRow

	Linker.link(hdy_expander_row_get_type, "hdy_expander_row_get_type", LIBRARY_HANDY);
	Linker.link(hdy_expander_row_new, "hdy_expander_row_new", LIBRARY_HANDY);
	Linker.link(hdy_expander_row_add_action, "hdy_expander_row_add_action", LIBRARY_HANDY);
	Linker.link(hdy_expander_row_add_prefix, "hdy_expander_row_add_prefix", LIBRARY_HANDY);
	Linker.link(hdy_expander_row_get_enable_expansion, "hdy_expander_row_get_enable_expansion", LIBRARY_HANDY);
	Linker.link(hdy_expander_row_get_expanded, "hdy_expander_row_get_expanded", LIBRARY_HANDY);
	Linker.link(hdy_expander_row_get_icon_name, "hdy_expander_row_get_icon_name", LIBRARY_HANDY);
	Linker.link(hdy_expander_row_get_show_enable_switch, "hdy_expander_row_get_show_enable_switch", LIBRARY_HANDY);
	Linker.link(hdy_expander_row_get_subtitle, "hdy_expander_row_get_subtitle", LIBRARY_HANDY);
	Linker.link(hdy_expander_row_get_use_underline, "hdy_expander_row_get_use_underline", LIBRARY_HANDY);
	Linker.link(hdy_expander_row_set_enable_expansion, "hdy_expander_row_set_enable_expansion", LIBRARY_HANDY);
	Linker.link(hdy_expander_row_set_expanded, "hdy_expander_row_set_expanded", LIBRARY_HANDY);
	Linker.link(hdy_expander_row_set_icon_name, "hdy_expander_row_set_icon_name", LIBRARY_HANDY);
	Linker.link(hdy_expander_row_set_show_enable_switch, "hdy_expander_row_set_show_enable_switch", LIBRARY_HANDY);
	Linker.link(hdy_expander_row_set_subtitle, "hdy_expander_row_set_subtitle", LIBRARY_HANDY);
	Linker.link(hdy_expander_row_set_use_underline, "hdy_expander_row_set_use_underline", LIBRARY_HANDY);

	// handy.HeaderBar

	Linker.link(hdy_header_bar_get_type, "hdy_header_bar_get_type", LIBRARY_HANDY);
	Linker.link(hdy_header_bar_new, "hdy_header_bar_new", LIBRARY_HANDY);
	Linker.link(hdy_header_bar_get_centering_policy, "hdy_header_bar_get_centering_policy", LIBRARY_HANDY);
	Linker.link(hdy_header_bar_get_custom_title, "hdy_header_bar_get_custom_title", LIBRARY_HANDY);
	Linker.link(hdy_header_bar_get_decoration_layout, "hdy_header_bar_get_decoration_layout", LIBRARY_HANDY);
	Linker.link(hdy_header_bar_get_has_subtitle, "hdy_header_bar_get_has_subtitle", LIBRARY_HANDY);
	Linker.link(hdy_header_bar_get_interpolate_size, "hdy_header_bar_get_interpolate_size", LIBRARY_HANDY);
	Linker.link(hdy_header_bar_get_show_close_button, "hdy_header_bar_get_show_close_button", LIBRARY_HANDY);
	Linker.link(hdy_header_bar_get_subtitle, "hdy_header_bar_get_subtitle", LIBRARY_HANDY);
	Linker.link(hdy_header_bar_get_title, "hdy_header_bar_get_title", LIBRARY_HANDY);
	Linker.link(hdy_header_bar_get_transition_duration, "hdy_header_bar_get_transition_duration", LIBRARY_HANDY);
	Linker.link(hdy_header_bar_get_transition_running, "hdy_header_bar_get_transition_running", LIBRARY_HANDY);
	Linker.link(hdy_header_bar_pack_end, "hdy_header_bar_pack_end", LIBRARY_HANDY);
	Linker.link(hdy_header_bar_pack_start, "hdy_header_bar_pack_start", LIBRARY_HANDY);
	Linker.link(hdy_header_bar_set_centering_policy, "hdy_header_bar_set_centering_policy", LIBRARY_HANDY);
	Linker.link(hdy_header_bar_set_custom_title, "hdy_header_bar_set_custom_title", LIBRARY_HANDY);
	Linker.link(hdy_header_bar_set_decoration_layout, "hdy_header_bar_set_decoration_layout", LIBRARY_HANDY);
	Linker.link(hdy_header_bar_set_has_subtitle, "hdy_header_bar_set_has_subtitle", LIBRARY_HANDY);
	Linker.link(hdy_header_bar_set_interpolate_size, "hdy_header_bar_set_interpolate_size", LIBRARY_HANDY);
	Linker.link(hdy_header_bar_set_show_close_button, "hdy_header_bar_set_show_close_button", LIBRARY_HANDY);
	Linker.link(hdy_header_bar_set_subtitle, "hdy_header_bar_set_subtitle", LIBRARY_HANDY);
	Linker.link(hdy_header_bar_set_title, "hdy_header_bar_set_title", LIBRARY_HANDY);
	Linker.link(hdy_header_bar_set_transition_duration, "hdy_header_bar_set_transition_duration", LIBRARY_HANDY);

	// handy.HeaderGroup

	Linker.link(hdy_header_group_get_type, "hdy_header_group_get_type", LIBRARY_HANDY);
	Linker.link(hdy_header_group_new, "hdy_header_group_new", LIBRARY_HANDY);
	Linker.link(hdy_header_group_add_gtk_header_bar, "hdy_header_group_add_gtk_header_bar", LIBRARY_HANDY);
	Linker.link(hdy_header_group_add_header_bar, "hdy_header_group_add_header_bar", LIBRARY_HANDY);
	Linker.link(hdy_header_group_add_header_group, "hdy_header_group_add_header_group", LIBRARY_HANDY);
	Linker.link(hdy_header_group_get_children, "hdy_header_group_get_children", LIBRARY_HANDY);
	Linker.link(hdy_header_group_get_decorate_all, "hdy_header_group_get_decorate_all", LIBRARY_HANDY);
	Linker.link(hdy_header_group_remove_child, "hdy_header_group_remove_child", LIBRARY_HANDY);
	Linker.link(hdy_header_group_remove_gtk_header_bar, "hdy_header_group_remove_gtk_header_bar", LIBRARY_HANDY);
	Linker.link(hdy_header_group_remove_header_bar, "hdy_header_group_remove_header_bar", LIBRARY_HANDY);
	Linker.link(hdy_header_group_remove_header_group, "hdy_header_group_remove_header_group", LIBRARY_HANDY);
	Linker.link(hdy_header_group_set_decorate_all, "hdy_header_group_set_decorate_all", LIBRARY_HANDY);

	// handy.HeaderGroupChild

	Linker.link(hdy_header_group_child_get_type, "hdy_header_group_child_get_type", LIBRARY_HANDY);
	Linker.link(hdy_header_group_child_get_child_type, "hdy_header_group_child_get_child_type", LIBRARY_HANDY);
	Linker.link(hdy_header_group_child_get_gtk_header_bar, "hdy_header_group_child_get_gtk_header_bar", LIBRARY_HANDY);
	Linker.link(hdy_header_group_child_get_header_bar, "hdy_header_group_child_get_header_bar", LIBRARY_HANDY);
	Linker.link(hdy_header_group_child_get_header_group, "hdy_header_group_child_get_header_group", LIBRARY_HANDY);

	// handy.Keypad

	Linker.link(hdy_keypad_get_type, "hdy_keypad_get_type", LIBRARY_HANDY);
	Linker.link(hdy_keypad_new, "hdy_keypad_new", LIBRARY_HANDY);
	Linker.link(hdy_keypad_get_column_spacing, "hdy_keypad_get_column_spacing", LIBRARY_HANDY);
	Linker.link(hdy_keypad_get_end_action, "hdy_keypad_get_end_action", LIBRARY_HANDY);
	Linker.link(hdy_keypad_get_entry, "hdy_keypad_get_entry", LIBRARY_HANDY);
	Linker.link(hdy_keypad_get_letters_visible, "hdy_keypad_get_letters_visible", LIBRARY_HANDY);
	Linker.link(hdy_keypad_get_row_spacing, "hdy_keypad_get_row_spacing", LIBRARY_HANDY);
	Linker.link(hdy_keypad_get_start_action, "hdy_keypad_get_start_action", LIBRARY_HANDY);
	Linker.link(hdy_keypad_get_symbols_visible, "hdy_keypad_get_symbols_visible", LIBRARY_HANDY);
	Linker.link(hdy_keypad_set_column_spacing, "hdy_keypad_set_column_spacing", LIBRARY_HANDY);
	Linker.link(hdy_keypad_set_end_action, "hdy_keypad_set_end_action", LIBRARY_HANDY);
	Linker.link(hdy_keypad_set_entry, "hdy_keypad_set_entry", LIBRARY_HANDY);
	Linker.link(hdy_keypad_set_letters_visible, "hdy_keypad_set_letters_visible", LIBRARY_HANDY);
	Linker.link(hdy_keypad_set_row_spacing, "hdy_keypad_set_row_spacing", LIBRARY_HANDY);
	Linker.link(hdy_keypad_set_start_action, "hdy_keypad_set_start_action", LIBRARY_HANDY);
	Linker.link(hdy_keypad_set_symbols_visible, "hdy_keypad_set_symbols_visible", LIBRARY_HANDY);

	// handy.Leaflet

	Linker.link(hdy_leaflet_get_type, "hdy_leaflet_get_type", LIBRARY_HANDY);
	Linker.link(hdy_leaflet_new, "hdy_leaflet_new", LIBRARY_HANDY);
	Linker.link(hdy_leaflet_get_adjacent_child, "hdy_leaflet_get_adjacent_child", LIBRARY_HANDY);
	Linker.link(hdy_leaflet_get_can_swipe_back, "hdy_leaflet_get_can_swipe_back", LIBRARY_HANDY);
	Linker.link(hdy_leaflet_get_can_swipe_forward, "hdy_leaflet_get_can_swipe_forward", LIBRARY_HANDY);
	Linker.link(hdy_leaflet_get_child_by_name, "hdy_leaflet_get_child_by_name", LIBRARY_HANDY);
	Linker.link(hdy_leaflet_get_child_transition_duration, "hdy_leaflet_get_child_transition_duration", LIBRARY_HANDY);
	Linker.link(hdy_leaflet_get_child_transition_running, "hdy_leaflet_get_child_transition_running", LIBRARY_HANDY);
	Linker.link(hdy_leaflet_get_folded, "hdy_leaflet_get_folded", LIBRARY_HANDY);
	Linker.link(hdy_leaflet_get_homogeneous, "hdy_leaflet_get_homogeneous", LIBRARY_HANDY);
	Linker.link(hdy_leaflet_get_interpolate_size, "hdy_leaflet_get_interpolate_size", LIBRARY_HANDY);
	Linker.link(hdy_leaflet_get_mode_transition_duration, "hdy_leaflet_get_mode_transition_duration", LIBRARY_HANDY);
	Linker.link(hdy_leaflet_get_transition_type, "hdy_leaflet_get_transition_type", LIBRARY_HANDY);
	Linker.link(hdy_leaflet_get_visible_child, "hdy_leaflet_get_visible_child", LIBRARY_HANDY);
	Linker.link(hdy_leaflet_get_visible_child_name, "hdy_leaflet_get_visible_child_name", LIBRARY_HANDY);
	Linker.link(hdy_leaflet_navigate, "hdy_leaflet_navigate", LIBRARY_HANDY);
	Linker.link(hdy_leaflet_set_can_swipe_back, "hdy_leaflet_set_can_swipe_back", LIBRARY_HANDY);
	Linker.link(hdy_leaflet_set_can_swipe_forward, "hdy_leaflet_set_can_swipe_forward", LIBRARY_HANDY);
	Linker.link(hdy_leaflet_set_child_transition_duration, "hdy_leaflet_set_child_transition_duration", LIBRARY_HANDY);
	Linker.link(hdy_leaflet_set_homogeneous, "hdy_leaflet_set_homogeneous", LIBRARY_HANDY);
	Linker.link(hdy_leaflet_set_interpolate_size, "hdy_leaflet_set_interpolate_size", LIBRARY_HANDY);
	Linker.link(hdy_leaflet_set_mode_transition_duration, "hdy_leaflet_set_mode_transition_duration", LIBRARY_HANDY);
	Linker.link(hdy_leaflet_set_transition_type, "hdy_leaflet_set_transition_type", LIBRARY_HANDY);
	Linker.link(hdy_leaflet_set_visible_child, "hdy_leaflet_set_visible_child", LIBRARY_HANDY);
	Linker.link(hdy_leaflet_set_visible_child_name, "hdy_leaflet_set_visible_child_name", LIBRARY_HANDY);

	// handy.PreferencesGroup

	Linker.link(hdy_preferences_group_get_type, "hdy_preferences_group_get_type", LIBRARY_HANDY);
	Linker.link(hdy_preferences_group_new, "hdy_preferences_group_new", LIBRARY_HANDY);
	Linker.link(hdy_preferences_group_get_description, "hdy_preferences_group_get_description", LIBRARY_HANDY);
	Linker.link(hdy_preferences_group_get_title, "hdy_preferences_group_get_title", LIBRARY_HANDY);
	Linker.link(hdy_preferences_group_set_description, "hdy_preferences_group_set_description", LIBRARY_HANDY);
	Linker.link(hdy_preferences_group_set_title, "hdy_preferences_group_set_title", LIBRARY_HANDY);

	// handy.PreferencesPage

	Linker.link(hdy_preferences_page_get_type, "hdy_preferences_page_get_type", LIBRARY_HANDY);
	Linker.link(hdy_preferences_page_new, "hdy_preferences_page_new", LIBRARY_HANDY);
	Linker.link(hdy_preferences_page_get_icon_name, "hdy_preferences_page_get_icon_name", LIBRARY_HANDY);
	Linker.link(hdy_preferences_page_get_title, "hdy_preferences_page_get_title", LIBRARY_HANDY);
	Linker.link(hdy_preferences_page_set_icon_name, "hdy_preferences_page_set_icon_name", LIBRARY_HANDY);
	Linker.link(hdy_preferences_page_set_title, "hdy_preferences_page_set_title", LIBRARY_HANDY);

	// handy.PreferencesRow

	Linker.link(hdy_preferences_row_get_type, "hdy_preferences_row_get_type", LIBRARY_HANDY);
	Linker.link(hdy_preferences_row_new, "hdy_preferences_row_new", LIBRARY_HANDY);
	Linker.link(hdy_preferences_row_get_title, "hdy_preferences_row_get_title", LIBRARY_HANDY);
	Linker.link(hdy_preferences_row_get_use_underline, "hdy_preferences_row_get_use_underline", LIBRARY_HANDY);
	Linker.link(hdy_preferences_row_set_title, "hdy_preferences_row_set_title", LIBRARY_HANDY);
	Linker.link(hdy_preferences_row_set_use_underline, "hdy_preferences_row_set_use_underline", LIBRARY_HANDY);

	// handy.PreferencesWindow

	Linker.link(hdy_preferences_window_get_type, "hdy_preferences_window_get_type", LIBRARY_HANDY);
	Linker.link(hdy_preferences_window_new, "hdy_preferences_window_new", LIBRARY_HANDY);
	Linker.link(hdy_preferences_window_close_subpage, "hdy_preferences_window_close_subpage", LIBRARY_HANDY);
	Linker.link(hdy_preferences_window_get_can_swipe_back, "hdy_preferences_window_get_can_swipe_back", LIBRARY_HANDY);
	Linker.link(hdy_preferences_window_get_search_enabled, "hdy_preferences_window_get_search_enabled", LIBRARY_HANDY);
	Linker.link(hdy_preferences_window_present_subpage, "hdy_preferences_window_present_subpage", LIBRARY_HANDY);
	Linker.link(hdy_preferences_window_set_can_swipe_back, "hdy_preferences_window_set_can_swipe_back", LIBRARY_HANDY);
	Linker.link(hdy_preferences_window_set_search_enabled, "hdy_preferences_window_set_search_enabled", LIBRARY_HANDY);

	// handy.SearchBar

	Linker.link(hdy_search_bar_get_type, "hdy_search_bar_get_type", LIBRARY_HANDY);
	Linker.link(hdy_search_bar_new, "hdy_search_bar_new", LIBRARY_HANDY);
	Linker.link(hdy_search_bar_connect_entry, "hdy_search_bar_connect_entry", LIBRARY_HANDY);
	Linker.link(hdy_search_bar_get_search_mode, "hdy_search_bar_get_search_mode", LIBRARY_HANDY);
	Linker.link(hdy_search_bar_get_show_close_button, "hdy_search_bar_get_show_close_button", LIBRARY_HANDY);
	Linker.link(hdy_search_bar_handle_event, "hdy_search_bar_handle_event", LIBRARY_HANDY);
	Linker.link(hdy_search_bar_set_search_mode, "hdy_search_bar_set_search_mode", LIBRARY_HANDY);
	Linker.link(hdy_search_bar_set_show_close_button, "hdy_search_bar_set_show_close_button", LIBRARY_HANDY);

	// handy.Squeezer

	Linker.link(hdy_squeezer_get_type, "hdy_squeezer_get_type", LIBRARY_HANDY);
	Linker.link(hdy_squeezer_new, "hdy_squeezer_new", LIBRARY_HANDY);
	Linker.link(hdy_squeezer_get_child_enabled, "hdy_squeezer_get_child_enabled", LIBRARY_HANDY);
	Linker.link(hdy_squeezer_get_homogeneous, "hdy_squeezer_get_homogeneous", LIBRARY_HANDY);
	Linker.link(hdy_squeezer_get_interpolate_size, "hdy_squeezer_get_interpolate_size", LIBRARY_HANDY);
	Linker.link(hdy_squeezer_get_transition_duration, "hdy_squeezer_get_transition_duration", LIBRARY_HANDY);
	Linker.link(hdy_squeezer_get_transition_running, "hdy_squeezer_get_transition_running", LIBRARY_HANDY);
	Linker.link(hdy_squeezer_get_transition_type, "hdy_squeezer_get_transition_type", LIBRARY_HANDY);
	Linker.link(hdy_squeezer_get_visible_child, "hdy_squeezer_get_visible_child", LIBRARY_HANDY);
	Linker.link(hdy_squeezer_get_xalign, "hdy_squeezer_get_xalign", LIBRARY_HANDY);
	Linker.link(hdy_squeezer_get_yalign, "hdy_squeezer_get_yalign", LIBRARY_HANDY);
	Linker.link(hdy_squeezer_set_child_enabled, "hdy_squeezer_set_child_enabled", LIBRARY_HANDY);
	Linker.link(hdy_squeezer_set_homogeneous, "hdy_squeezer_set_homogeneous", LIBRARY_HANDY);
	Linker.link(hdy_squeezer_set_interpolate_size, "hdy_squeezer_set_interpolate_size", LIBRARY_HANDY);
	Linker.link(hdy_squeezer_set_transition_duration, "hdy_squeezer_set_transition_duration", LIBRARY_HANDY);
	Linker.link(hdy_squeezer_set_transition_type, "hdy_squeezer_set_transition_type", LIBRARY_HANDY);
	Linker.link(hdy_squeezer_set_xalign, "hdy_squeezer_set_xalign", LIBRARY_HANDY);
	Linker.link(hdy_squeezer_set_yalign, "hdy_squeezer_set_yalign", LIBRARY_HANDY);

	// handy.SwipeGroup

	Linker.link(hdy_swipe_group_get_type, "hdy_swipe_group_get_type", LIBRARY_HANDY);
	Linker.link(hdy_swipe_group_new, "hdy_swipe_group_new", LIBRARY_HANDY);
	Linker.link(hdy_swipe_group_add_swipeable, "hdy_swipe_group_add_swipeable", LIBRARY_HANDY);
	Linker.link(hdy_swipe_group_get_swipeables, "hdy_swipe_group_get_swipeables", LIBRARY_HANDY);
	Linker.link(hdy_swipe_group_remove_swipeable, "hdy_swipe_group_remove_swipeable", LIBRARY_HANDY);

	// handy.SwipeTracker

	Linker.link(hdy_swipe_tracker_get_type, "hdy_swipe_tracker_get_type", LIBRARY_HANDY);
	Linker.link(hdy_swipe_tracker_new, "hdy_swipe_tracker_new", LIBRARY_HANDY);
	Linker.link(hdy_swipe_tracker_get_allow_mouse_drag, "hdy_swipe_tracker_get_allow_mouse_drag", LIBRARY_HANDY);
	Linker.link(hdy_swipe_tracker_get_enabled, "hdy_swipe_tracker_get_enabled", LIBRARY_HANDY);
	Linker.link(hdy_swipe_tracker_get_reversed, "hdy_swipe_tracker_get_reversed", LIBRARY_HANDY);
	Linker.link(hdy_swipe_tracker_get_swipeable, "hdy_swipe_tracker_get_swipeable", LIBRARY_HANDY);
	Linker.link(hdy_swipe_tracker_set_allow_mouse_drag, "hdy_swipe_tracker_set_allow_mouse_drag", LIBRARY_HANDY);
	Linker.link(hdy_swipe_tracker_set_enabled, "hdy_swipe_tracker_set_enabled", LIBRARY_HANDY);
	Linker.link(hdy_swipe_tracker_set_reversed, "hdy_swipe_tracker_set_reversed", LIBRARY_HANDY);
	Linker.link(hdy_swipe_tracker_shift_position, "hdy_swipe_tracker_shift_position", LIBRARY_HANDY);

	// handy.Swipeable

	Linker.link(hdy_swipeable_get_type, "hdy_swipeable_get_type", LIBRARY_HANDY);
	Linker.link(hdy_swipeable_emit_child_switched, "hdy_swipeable_emit_child_switched", LIBRARY_HANDY);
	Linker.link(hdy_swipeable_get_cancel_progress, "hdy_swipeable_get_cancel_progress", LIBRARY_HANDY);
	Linker.link(hdy_swipeable_get_distance, "hdy_swipeable_get_distance", LIBRARY_HANDY);
	Linker.link(hdy_swipeable_get_progress, "hdy_swipeable_get_progress", LIBRARY_HANDY);
	Linker.link(hdy_swipeable_get_snap_points, "hdy_swipeable_get_snap_points", LIBRARY_HANDY);
	Linker.link(hdy_swipeable_get_swipe_area, "hdy_swipeable_get_swipe_area", LIBRARY_HANDY);
	Linker.link(hdy_swipeable_get_swipe_tracker, "hdy_swipeable_get_swipe_tracker", LIBRARY_HANDY);
	Linker.link(hdy_swipeable_switch_child, "hdy_swipeable_switch_child", LIBRARY_HANDY);

	// handy.TitleBar

	Linker.link(hdy_title_bar_get_type, "hdy_title_bar_get_type", LIBRARY_HANDY);
	Linker.link(hdy_title_bar_new, "hdy_title_bar_new", LIBRARY_HANDY);
	Linker.link(hdy_title_bar_get_selection_mode, "hdy_title_bar_get_selection_mode", LIBRARY_HANDY);
	Linker.link(hdy_title_bar_set_selection_mode, "hdy_title_bar_set_selection_mode", LIBRARY_HANDY);

	// handy.ValueObject

	Linker.link(hdy_value_object_get_type, "hdy_value_object_get_type", LIBRARY_HANDY);
	Linker.link(hdy_value_object_new, "hdy_value_object_new", LIBRARY_HANDY);
	Linker.link(hdy_value_object_new_collect, "hdy_value_object_new_collect", LIBRARY_HANDY);
	Linker.link(hdy_value_object_new_string, "hdy_value_object_new_string", LIBRARY_HANDY);
	Linker.link(hdy_value_object_new_take_string, "hdy_value_object_new_take_string", LIBRARY_HANDY);
	Linker.link(hdy_value_object_copy_value, "hdy_value_object_copy_value", LIBRARY_HANDY);
	Linker.link(hdy_value_object_dup_string, "hdy_value_object_dup_string", LIBRARY_HANDY);
	Linker.link(hdy_value_object_get_string, "hdy_value_object_get_string", LIBRARY_HANDY);
	Linker.link(hdy_value_object_get_value, "hdy_value_object_get_value", LIBRARY_HANDY);

	// handy.ViewSwitcher

	Linker.link(hdy_view_switcher_get_type, "hdy_view_switcher_get_type", LIBRARY_HANDY);
	Linker.link(hdy_view_switcher_new, "hdy_view_switcher_new", LIBRARY_HANDY);
	Linker.link(hdy_view_switcher_get_narrow_ellipsize, "hdy_view_switcher_get_narrow_ellipsize", LIBRARY_HANDY);
	Linker.link(hdy_view_switcher_get_policy, "hdy_view_switcher_get_policy", LIBRARY_HANDY);
	Linker.link(hdy_view_switcher_get_stack, "hdy_view_switcher_get_stack", LIBRARY_HANDY);
	Linker.link(hdy_view_switcher_set_narrow_ellipsize, "hdy_view_switcher_set_narrow_ellipsize", LIBRARY_HANDY);
	Linker.link(hdy_view_switcher_set_policy, "hdy_view_switcher_set_policy", LIBRARY_HANDY);
	Linker.link(hdy_view_switcher_set_stack, "hdy_view_switcher_set_stack", LIBRARY_HANDY);

	// handy.ViewSwitcherBar

	Linker.link(hdy_view_switcher_bar_get_type, "hdy_view_switcher_bar_get_type", LIBRARY_HANDY);
	Linker.link(hdy_view_switcher_bar_new, "hdy_view_switcher_bar_new", LIBRARY_HANDY);
	Linker.link(hdy_view_switcher_bar_get_policy, "hdy_view_switcher_bar_get_policy", LIBRARY_HANDY);
	Linker.link(hdy_view_switcher_bar_get_reveal, "hdy_view_switcher_bar_get_reveal", LIBRARY_HANDY);
	Linker.link(hdy_view_switcher_bar_get_stack, "hdy_view_switcher_bar_get_stack", LIBRARY_HANDY);
	Linker.link(hdy_view_switcher_bar_set_policy, "hdy_view_switcher_bar_set_policy", LIBRARY_HANDY);
	Linker.link(hdy_view_switcher_bar_set_reveal, "hdy_view_switcher_bar_set_reveal", LIBRARY_HANDY);
	Linker.link(hdy_view_switcher_bar_set_stack, "hdy_view_switcher_bar_set_stack", LIBRARY_HANDY);

	// handy.ViewSwitcherTitle

	Linker.link(hdy_view_switcher_title_get_type, "hdy_view_switcher_title_get_type", LIBRARY_HANDY);
	Linker.link(hdy_view_switcher_title_new, "hdy_view_switcher_title_new", LIBRARY_HANDY);
	Linker.link(hdy_view_switcher_title_get_policy, "hdy_view_switcher_title_get_policy", LIBRARY_HANDY);
	Linker.link(hdy_view_switcher_title_get_stack, "hdy_view_switcher_title_get_stack", LIBRARY_HANDY);
	Linker.link(hdy_view_switcher_title_get_subtitle, "hdy_view_switcher_title_get_subtitle", LIBRARY_HANDY);
	Linker.link(hdy_view_switcher_title_get_title, "hdy_view_switcher_title_get_title", LIBRARY_HANDY);
	Linker.link(hdy_view_switcher_title_get_title_visible, "hdy_view_switcher_title_get_title_visible", LIBRARY_HANDY);
	Linker.link(hdy_view_switcher_title_get_view_switcher_enabled, "hdy_view_switcher_title_get_view_switcher_enabled", LIBRARY_HANDY);
	Linker.link(hdy_view_switcher_title_set_policy, "hdy_view_switcher_title_set_policy", LIBRARY_HANDY);
	Linker.link(hdy_view_switcher_title_set_stack, "hdy_view_switcher_title_set_stack", LIBRARY_HANDY);
	Linker.link(hdy_view_switcher_title_set_subtitle, "hdy_view_switcher_title_set_subtitle", LIBRARY_HANDY);
	Linker.link(hdy_view_switcher_title_set_title, "hdy_view_switcher_title_set_title", LIBRARY_HANDY);
	Linker.link(hdy_view_switcher_title_set_view_switcher_enabled, "hdy_view_switcher_title_set_view_switcher_enabled", LIBRARY_HANDY);

	// handy.Window

	Linker.link(hdy_window_get_type, "hdy_window_get_type", LIBRARY_HANDY);
	Linker.link(hdy_window_new, "hdy_window_new", LIBRARY_HANDY);

	// handy.WindowHandle

	Linker.link(hdy_window_handle_get_type, "hdy_window_handle_get_type", LIBRARY_HANDY);
	Linker.link(hdy_window_handle_new, "hdy_window_handle_new", LIBRARY_HANDY);
}

__gshared extern(C)
{

	// handy.ActionRow

	GType function() c_hdy_action_row_get_type;
	GtkWidget* function() c_hdy_action_row_new;
	void function(HdyActionRow* self) c_hdy_action_row_activate;
	void function(HdyActionRow* self, GtkWidget* widget) c_hdy_action_row_add_prefix;
	GtkWidget* function(HdyActionRow* self) c_hdy_action_row_get_activatable_widget;
	const(char)* function(HdyActionRow* self) c_hdy_action_row_get_icon_name;
	const(char)* function(HdyActionRow* self) c_hdy_action_row_get_subtitle;
	int function(HdyActionRow* self) c_hdy_action_row_get_use_underline;
	void function(HdyActionRow* self, GtkWidget* widget) c_hdy_action_row_set_activatable_widget;
	void function(HdyActionRow* self, const(char)* iconName) c_hdy_action_row_set_icon_name;
	void function(HdyActionRow* self, const(char)* subtitle) c_hdy_action_row_set_subtitle;
	void function(HdyActionRow* self, int useUnderline) c_hdy_action_row_set_use_underline;

	// handy.ApplicationWindow

	GType function() c_hdy_application_window_get_type;
	GtkWidget* function() c_hdy_application_window_new;

	// handy.Avatar

	GType function() c_hdy_avatar_get_type;
	GtkWidget* function(int size, const(char)* text, int showInitials) c_hdy_avatar_new;
	const(char)* function(HdyAvatar* self) c_hdy_avatar_get_icon_name;
	int function(HdyAvatar* self) c_hdy_avatar_get_show_initials;
	int function(HdyAvatar* self) c_hdy_avatar_get_size;
	const(char)* function(HdyAvatar* self) c_hdy_avatar_get_text;
	void function(HdyAvatar* self, const(char)* iconName) c_hdy_avatar_set_icon_name;
	void function(HdyAvatar* self, HdyAvatarImageLoadFunc loadImage, void* userData, GDestroyNotify destroy) c_hdy_avatar_set_image_load_func;
	void function(HdyAvatar* self, int showInitials) c_hdy_avatar_set_show_initials;
	void function(HdyAvatar* self, int size) c_hdy_avatar_set_size;
	void function(HdyAvatar* self, const(char)* text) c_hdy_avatar_set_text;

	// handy.Carousel

	GType function() c_hdy_carousel_get_type;
	GtkWidget* function() c_hdy_carousel_new;
	int function(HdyCarousel* self) c_hdy_carousel_get_allow_mouse_drag;
	uint function(HdyCarousel* self) c_hdy_carousel_get_animation_duration;
	int function(HdyCarousel* self) c_hdy_carousel_get_interactive;
	uint function(HdyCarousel* self) c_hdy_carousel_get_n_pages;
	double function(HdyCarousel* self) c_hdy_carousel_get_position;
	uint function(HdyCarousel* self) c_hdy_carousel_get_reveal_duration;
	uint function(HdyCarousel* self) c_hdy_carousel_get_spacing;
	void function(HdyCarousel* self, GtkWidget* child, int position) c_hdy_carousel_insert;
	void function(HdyCarousel* self, GtkWidget* child) c_hdy_carousel_prepend;
	void function(HdyCarousel* self, GtkWidget* child, int position) c_hdy_carousel_reorder;
	void function(HdyCarousel* self, GtkWidget* widget) c_hdy_carousel_scroll_to;
	void function(HdyCarousel* self, GtkWidget* widget, long duration) c_hdy_carousel_scroll_to_full;
	void function(HdyCarousel* self, int allowMouseDrag) c_hdy_carousel_set_allow_mouse_drag;
	void function(HdyCarousel* self, uint duration) c_hdy_carousel_set_animation_duration;
	void function(HdyCarousel* self, int interactive) c_hdy_carousel_set_interactive;
	void function(HdyCarousel* self, uint revealDuration) c_hdy_carousel_set_reveal_duration;
	void function(HdyCarousel* self, uint spacing) c_hdy_carousel_set_spacing;

	// handy.CarouselIndicatorDots

	GType function() c_hdy_carousel_indicator_dots_get_type;
	GtkWidget* function() c_hdy_carousel_indicator_dots_new;
	HdyCarousel* function(HdyCarouselIndicatorDots* self) c_hdy_carousel_indicator_dots_get_carousel;
	void function(HdyCarouselIndicatorDots* self, HdyCarousel* carousel) c_hdy_carousel_indicator_dots_set_carousel;

	// handy.CarouselIndicatorLines

	GType function() c_hdy_carousel_indicator_lines_get_type;
	GtkWidget* function() c_hdy_carousel_indicator_lines_new;
	HdyCarousel* function(HdyCarouselIndicatorLines* self) c_hdy_carousel_indicator_lines_get_carousel;
	void function(HdyCarouselIndicatorLines* self, HdyCarousel* carousel) c_hdy_carousel_indicator_lines_set_carousel;

	// handy.Clamp

	GType function() c_hdy_clamp_get_type;
	GtkWidget* function() c_hdy_clamp_new;
	int function(HdyClamp* self) c_hdy_clamp_get_maximum_size;
	int function(HdyClamp* self) c_hdy_clamp_get_tightening_threshold;
	void function(HdyClamp* self, int maximumSize) c_hdy_clamp_set_maximum_size;
	void function(HdyClamp* self, int tighteningThreshold) c_hdy_clamp_set_tightening_threshold;

	// handy.ComboRow

	GType function() c_hdy_combo_row_get_type;
	GtkWidget* function() c_hdy_combo_row_new;
	void function(HdyComboRow* self, GListModel* model, GtkListBoxCreateWidgetFunc createListWidgetFunc, GtkListBoxCreateWidgetFunc createCurrentWidgetFunc, void* userData, GDestroyNotify userDataFreeFunc) c_hdy_combo_row_bind_model;
	void function(HdyComboRow* self, GListModel* model, HdyComboRowGetNameFunc getNameFunc, void* userData, GDestroyNotify userDataFreeFunc) c_hdy_combo_row_bind_name_model;
	GListModel* function(HdyComboRow* self) c_hdy_combo_row_get_model;
	int function(HdyComboRow* self) c_hdy_combo_row_get_selected_index;
	int function(HdyComboRow* self) c_hdy_combo_row_get_use_subtitle;
	void function(HdyComboRow* self, GType enumType, HdyComboRowGetEnumValueNameFunc getNameFunc, void* userData, GDestroyNotify userDataFreeFunc) c_hdy_combo_row_set_for_enum;
	void function(HdyComboRow* self, HdyComboRowGetNameFunc getNameFunc, void* userData, GDestroyNotify userDataFreeFunc) c_hdy_combo_row_set_get_name_func;
	void function(HdyComboRow* self, int selectedIndex) c_hdy_combo_row_set_selected_index;
	void function(HdyComboRow* self, int useSubtitle) c_hdy_combo_row_set_use_subtitle;

	// handy.Deck

	GType function() c_hdy_deck_get_type;
	GtkWidget* function() c_hdy_deck_new;
	GtkWidget* function(HdyDeck* self, HdyNavigationDirection direction) c_hdy_deck_get_adjacent_child;
	int function(HdyDeck* self) c_hdy_deck_get_can_swipe_back;
	int function(HdyDeck* self) c_hdy_deck_get_can_swipe_forward;
	GtkWidget* function(HdyDeck* self, const(char)* name) c_hdy_deck_get_child_by_name;
	int function(HdyDeck* self, GtkOrientation orientation) c_hdy_deck_get_homogeneous;
	int function(HdyDeck* self) c_hdy_deck_get_interpolate_size;
	uint function(HdyDeck* self) c_hdy_deck_get_transition_duration;
	int function(HdyDeck* self) c_hdy_deck_get_transition_running;
	HdyDeckTransitionType function(HdyDeck* self) c_hdy_deck_get_transition_type;
	GtkWidget* function(HdyDeck* self) c_hdy_deck_get_visible_child;
	const(char)* function(HdyDeck* self) c_hdy_deck_get_visible_child_name;
	int function(HdyDeck* self, HdyNavigationDirection direction) c_hdy_deck_navigate;
	void function(HdyDeck* self, int canSwipeBack) c_hdy_deck_set_can_swipe_back;
	void function(HdyDeck* self, int canSwipeForward) c_hdy_deck_set_can_swipe_forward;
	void function(HdyDeck* self, GtkOrientation orientation, int homogeneous) c_hdy_deck_set_homogeneous;
	void function(HdyDeck* self, int interpolateSize) c_hdy_deck_set_interpolate_size;
	void function(HdyDeck* self, uint duration) c_hdy_deck_set_transition_duration;
	void function(HdyDeck* self, HdyDeckTransitionType transition) c_hdy_deck_set_transition_type;
	void function(HdyDeck* self, GtkWidget* visibleChild) c_hdy_deck_set_visible_child;
	void function(HdyDeck* self, const(char)* name) c_hdy_deck_set_visible_child_name;

	// handy.EnumValueObject

	GType function() c_hdy_enum_value_object_get_type;
	HdyEnumValueObject* function(GEnumValue* enumValue) c_hdy_enum_value_object_new;
	const(char)* function(HdyEnumValueObject* self) c_hdy_enum_value_object_get_name;
	const(char)* function(HdyEnumValueObject* self) c_hdy_enum_value_object_get_nick;
	int function(HdyEnumValueObject* self) c_hdy_enum_value_object_get_value;

	// handy.ExpanderRow

	GType function() c_hdy_expander_row_get_type;
	GtkWidget* function() c_hdy_expander_row_new;
	void function(HdyExpanderRow* self, GtkWidget* widget) c_hdy_expander_row_add_action;
	void function(HdyExpanderRow* self, GtkWidget* widget) c_hdy_expander_row_add_prefix;
	int function(HdyExpanderRow* self) c_hdy_expander_row_get_enable_expansion;
	int function(HdyExpanderRow* self) c_hdy_expander_row_get_expanded;
	const(char)* function(HdyExpanderRow* self) c_hdy_expander_row_get_icon_name;
	int function(HdyExpanderRow* self) c_hdy_expander_row_get_show_enable_switch;
	const(char)* function(HdyExpanderRow* self) c_hdy_expander_row_get_subtitle;
	int function(HdyExpanderRow* self) c_hdy_expander_row_get_use_underline;
	void function(HdyExpanderRow* self, int enableExpansion) c_hdy_expander_row_set_enable_expansion;
	void function(HdyExpanderRow* self, int expanded) c_hdy_expander_row_set_expanded;
	void function(HdyExpanderRow* self, const(char)* iconName) c_hdy_expander_row_set_icon_name;
	void function(HdyExpanderRow* self, int showEnableSwitch) c_hdy_expander_row_set_show_enable_switch;
	void function(HdyExpanderRow* self, const(char)* subtitle) c_hdy_expander_row_set_subtitle;
	void function(HdyExpanderRow* self, int useUnderline) c_hdy_expander_row_set_use_underline;

	// handy.HeaderBar

	GType function() c_hdy_header_bar_get_type;
	GtkWidget* function() c_hdy_header_bar_new;
	HdyCenteringPolicy function(HdyHeaderBar* self) c_hdy_header_bar_get_centering_policy;
	GtkWidget* function(HdyHeaderBar* self) c_hdy_header_bar_get_custom_title;
	const(char)* function(HdyHeaderBar* self) c_hdy_header_bar_get_decoration_layout;
	int function(HdyHeaderBar* self) c_hdy_header_bar_get_has_subtitle;
	int function(HdyHeaderBar* self) c_hdy_header_bar_get_interpolate_size;
	int function(HdyHeaderBar* self) c_hdy_header_bar_get_show_close_button;
	const(char)* function(HdyHeaderBar* self) c_hdy_header_bar_get_subtitle;
	const(char)* function(HdyHeaderBar* self) c_hdy_header_bar_get_title;
	uint function(HdyHeaderBar* self) c_hdy_header_bar_get_transition_duration;
	int function(HdyHeaderBar* self) c_hdy_header_bar_get_transition_running;
	void function(HdyHeaderBar* self, GtkWidget* child) c_hdy_header_bar_pack_end;
	void function(HdyHeaderBar* self, GtkWidget* child) c_hdy_header_bar_pack_start;
	void function(HdyHeaderBar* self, HdyCenteringPolicy centeringPolicy) c_hdy_header_bar_set_centering_policy;
	void function(HdyHeaderBar* self, GtkWidget* titleWidget) c_hdy_header_bar_set_custom_title;
	void function(HdyHeaderBar* self, const(char)* layout) c_hdy_header_bar_set_decoration_layout;
	void function(HdyHeaderBar* self, int setting) c_hdy_header_bar_set_has_subtitle;
	void function(HdyHeaderBar* self, int interpolateSize) c_hdy_header_bar_set_interpolate_size;
	void function(HdyHeaderBar* self, int setting) c_hdy_header_bar_set_show_close_button;
	void function(HdyHeaderBar* self, const(char)* subtitle) c_hdy_header_bar_set_subtitle;
	void function(HdyHeaderBar* self, const(char)* title) c_hdy_header_bar_set_title;
	void function(HdyHeaderBar* self, uint duration) c_hdy_header_bar_set_transition_duration;

	// handy.HeaderGroup

	GType function() c_hdy_header_group_get_type;
	HdyHeaderGroup* function() c_hdy_header_group_new;
	void function(HdyHeaderGroup* self, GtkHeaderBar* headerBar) c_hdy_header_group_add_gtk_header_bar;
	void function(HdyHeaderGroup* self, HdyHeaderBar* headerBar) c_hdy_header_group_add_header_bar;
	void function(HdyHeaderGroup* self, HdyHeaderGroup* headerGroup) c_hdy_header_group_add_header_group;
	GSList* function(HdyHeaderGroup* self) c_hdy_header_group_get_children;
	int function(HdyHeaderGroup* self) c_hdy_header_group_get_decorate_all;
	void function(HdyHeaderGroup* self, HdyHeaderGroupChild* child) c_hdy_header_group_remove_child;
	void function(HdyHeaderGroup* self, GtkHeaderBar* headerBar) c_hdy_header_group_remove_gtk_header_bar;
	void function(HdyHeaderGroup* self, HdyHeaderBar* headerBar) c_hdy_header_group_remove_header_bar;
	void function(HdyHeaderGroup* self, HdyHeaderGroup* headerGroup) c_hdy_header_group_remove_header_group;
	void function(HdyHeaderGroup* self, int decorateAll) c_hdy_header_group_set_decorate_all;

	// handy.HeaderGroupChild

	GType function() c_hdy_header_group_child_get_type;
	HdyHeaderGroupChildType function(HdyHeaderGroupChild* self) c_hdy_header_group_child_get_child_type;
	GtkHeaderBar* function(HdyHeaderGroupChild* self) c_hdy_header_group_child_get_gtk_header_bar;
	HdyHeaderBar* function(HdyHeaderGroupChild* self) c_hdy_header_group_child_get_header_bar;
	HdyHeaderGroup* function(HdyHeaderGroupChild* self) c_hdy_header_group_child_get_header_group;

	// handy.Keypad

	GType function() c_hdy_keypad_get_type;
	GtkWidget* function(int symbolsVisible, int lettersVisible) c_hdy_keypad_new;
	uint function(HdyKeypad* self) c_hdy_keypad_get_column_spacing;
	GtkWidget* function(HdyKeypad* self) c_hdy_keypad_get_end_action;
	GtkEntry* function(HdyKeypad* self) c_hdy_keypad_get_entry;
	int function(HdyKeypad* self) c_hdy_keypad_get_letters_visible;
	uint function(HdyKeypad* self) c_hdy_keypad_get_row_spacing;
	GtkWidget* function(HdyKeypad* self) c_hdy_keypad_get_start_action;
	int function(HdyKeypad* self) c_hdy_keypad_get_symbols_visible;
	void function(HdyKeypad* self, uint spacing) c_hdy_keypad_set_column_spacing;
	void function(HdyKeypad* self, GtkWidget* endAction) c_hdy_keypad_set_end_action;
	void function(HdyKeypad* self, GtkEntry* entry) c_hdy_keypad_set_entry;
	void function(HdyKeypad* self, int lettersVisible) c_hdy_keypad_set_letters_visible;
	void function(HdyKeypad* self, uint spacing) c_hdy_keypad_set_row_spacing;
	void function(HdyKeypad* self, GtkWidget* startAction) c_hdy_keypad_set_start_action;
	void function(HdyKeypad* self, int symbolsVisible) c_hdy_keypad_set_symbols_visible;

	// handy.Leaflet

	GType function() c_hdy_leaflet_get_type;
	GtkWidget* function() c_hdy_leaflet_new;
	GtkWidget* function(HdyLeaflet* self, HdyNavigationDirection direction) c_hdy_leaflet_get_adjacent_child;
	int function(HdyLeaflet* self) c_hdy_leaflet_get_can_swipe_back;
	int function(HdyLeaflet* self) c_hdy_leaflet_get_can_swipe_forward;
	GtkWidget* function(HdyLeaflet* self, const(char)* name) c_hdy_leaflet_get_child_by_name;
	uint function(HdyLeaflet* self) c_hdy_leaflet_get_child_transition_duration;
	int function(HdyLeaflet* self) c_hdy_leaflet_get_child_transition_running;
	int function(HdyLeaflet* self) c_hdy_leaflet_get_folded;
	int function(HdyLeaflet* self, int folded, GtkOrientation orientation) c_hdy_leaflet_get_homogeneous;
	int function(HdyLeaflet* self) c_hdy_leaflet_get_interpolate_size;
	uint function(HdyLeaflet* self) c_hdy_leaflet_get_mode_transition_duration;
	HdyLeafletTransitionType function(HdyLeaflet* self) c_hdy_leaflet_get_transition_type;
	GtkWidget* function(HdyLeaflet* self) c_hdy_leaflet_get_visible_child;
	const(char)* function(HdyLeaflet* self) c_hdy_leaflet_get_visible_child_name;
	int function(HdyLeaflet* self, HdyNavigationDirection direction) c_hdy_leaflet_navigate;
	void function(HdyLeaflet* self, int canSwipeBack) c_hdy_leaflet_set_can_swipe_back;
	void function(HdyLeaflet* self, int canSwipeForward) c_hdy_leaflet_set_can_swipe_forward;
	void function(HdyLeaflet* self, uint duration) c_hdy_leaflet_set_child_transition_duration;
	void function(HdyLeaflet* self, int folded, GtkOrientation orientation, int homogeneous) c_hdy_leaflet_set_homogeneous;
	void function(HdyLeaflet* self, int interpolateSize) c_hdy_leaflet_set_interpolate_size;
	void function(HdyLeaflet* self, uint duration) c_hdy_leaflet_set_mode_transition_duration;
	void function(HdyLeaflet* self, HdyLeafletTransitionType transition) c_hdy_leaflet_set_transition_type;
	void function(HdyLeaflet* self, GtkWidget* visibleChild) c_hdy_leaflet_set_visible_child;
	void function(HdyLeaflet* self, const(char)* name) c_hdy_leaflet_set_visible_child_name;

	// handy.PreferencesGroup

	GType function() c_hdy_preferences_group_get_type;
	GtkWidget* function() c_hdy_preferences_group_new;
	const(char)* function(HdyPreferencesGroup* self) c_hdy_preferences_group_get_description;
	const(char)* function(HdyPreferencesGroup* self) c_hdy_preferences_group_get_title;
	void function(HdyPreferencesGroup* self, const(char)* description) c_hdy_preferences_group_set_description;
	void function(HdyPreferencesGroup* self, const(char)* title) c_hdy_preferences_group_set_title;

	// handy.PreferencesPage

	GType function() c_hdy_preferences_page_get_type;
	GtkWidget* function() c_hdy_preferences_page_new;
	const(char)* function(HdyPreferencesPage* self) c_hdy_preferences_page_get_icon_name;
	const(char)* function(HdyPreferencesPage* self) c_hdy_preferences_page_get_title;
	void function(HdyPreferencesPage* self, const(char)* iconName) c_hdy_preferences_page_set_icon_name;
	void function(HdyPreferencesPage* self, const(char)* title) c_hdy_preferences_page_set_title;

	// handy.PreferencesRow

	GType function() c_hdy_preferences_row_get_type;
	GtkWidget* function() c_hdy_preferences_row_new;
	const(char)* function(HdyPreferencesRow* self) c_hdy_preferences_row_get_title;
	int function(HdyPreferencesRow* self) c_hdy_preferences_row_get_use_underline;
	void function(HdyPreferencesRow* self, const(char)* title) c_hdy_preferences_row_set_title;
	void function(HdyPreferencesRow* self, int useUnderline) c_hdy_preferences_row_set_use_underline;

	// handy.PreferencesWindow

	GType function() c_hdy_preferences_window_get_type;
	GtkWidget* function() c_hdy_preferences_window_new;
	void function(HdyPreferencesWindow* self) c_hdy_preferences_window_close_subpage;
	int function(HdyPreferencesWindow* self) c_hdy_preferences_window_get_can_swipe_back;
	int function(HdyPreferencesWindow* self) c_hdy_preferences_window_get_search_enabled;
	void function(HdyPreferencesWindow* self, GtkWidget* subpage) c_hdy_preferences_window_present_subpage;
	void function(HdyPreferencesWindow* self, int canSwipeBack) c_hdy_preferences_window_set_can_swipe_back;
	void function(HdyPreferencesWindow* self, int searchEnabled) c_hdy_preferences_window_set_search_enabled;

	// handy.SearchBar

	GType function() c_hdy_search_bar_get_type;
	GtkWidget* function() c_hdy_search_bar_new;
	void function(HdySearchBar* self, GtkEntry* entry) c_hdy_search_bar_connect_entry;
	int function(HdySearchBar* self) c_hdy_search_bar_get_search_mode;
	int function(HdySearchBar* self) c_hdy_search_bar_get_show_close_button;
	int function(HdySearchBar* self, GdkEvent* event) c_hdy_search_bar_handle_event;
	void function(HdySearchBar* self, int searchMode) c_hdy_search_bar_set_search_mode;
	void function(HdySearchBar* self, int visible) c_hdy_search_bar_set_show_close_button;

	// handy.Squeezer

	GType function() c_hdy_squeezer_get_type;
	GtkWidget* function() c_hdy_squeezer_new;
	int function(HdySqueezer* self, GtkWidget* child) c_hdy_squeezer_get_child_enabled;
	int function(HdySqueezer* self) c_hdy_squeezer_get_homogeneous;
	int function(HdySqueezer* self) c_hdy_squeezer_get_interpolate_size;
	uint function(HdySqueezer* self) c_hdy_squeezer_get_transition_duration;
	int function(HdySqueezer* self) c_hdy_squeezer_get_transition_running;
	HdySqueezerTransitionType function(HdySqueezer* self) c_hdy_squeezer_get_transition_type;
	GtkWidget* function(HdySqueezer* self) c_hdy_squeezer_get_visible_child;
	float function(HdySqueezer* self) c_hdy_squeezer_get_xalign;
	float function(HdySqueezer* self) c_hdy_squeezer_get_yalign;
	void function(HdySqueezer* self, GtkWidget* child, int enabled) c_hdy_squeezer_set_child_enabled;
	void function(HdySqueezer* self, int homogeneous) c_hdy_squeezer_set_homogeneous;
	void function(HdySqueezer* self, int interpolateSize) c_hdy_squeezer_set_interpolate_size;
	void function(HdySqueezer* self, uint duration) c_hdy_squeezer_set_transition_duration;
	void function(HdySqueezer* self, HdySqueezerTransitionType transition) c_hdy_squeezer_set_transition_type;
	void function(HdySqueezer* self, float xalign) c_hdy_squeezer_set_xalign;
	void function(HdySqueezer* self, float yalign) c_hdy_squeezer_set_yalign;

	// handy.SwipeGroup

	GType function() c_hdy_swipe_group_get_type;
	HdySwipeGroup* function() c_hdy_swipe_group_new;
	void function(HdySwipeGroup* self, HdySwipeable* swipeable) c_hdy_swipe_group_add_swipeable;
	GSList* function(HdySwipeGroup* self) c_hdy_swipe_group_get_swipeables;
	void function(HdySwipeGroup* self, HdySwipeable* swipeable) c_hdy_swipe_group_remove_swipeable;

	// handy.SwipeTracker

	GType function() c_hdy_swipe_tracker_get_type;
	HdySwipeTracker* function(HdySwipeable* swipeable) c_hdy_swipe_tracker_new;
	int function(HdySwipeTracker* self) c_hdy_swipe_tracker_get_allow_mouse_drag;
	int function(HdySwipeTracker* self) c_hdy_swipe_tracker_get_enabled;
	int function(HdySwipeTracker* self) c_hdy_swipe_tracker_get_reversed;
	HdySwipeable* function(HdySwipeTracker* self) c_hdy_swipe_tracker_get_swipeable;
	void function(HdySwipeTracker* self, int allowMouseDrag) c_hdy_swipe_tracker_set_allow_mouse_drag;
	void function(HdySwipeTracker* self, int enabled) c_hdy_swipe_tracker_set_enabled;
	void function(HdySwipeTracker* self, int reversed) c_hdy_swipe_tracker_set_reversed;
	void function(HdySwipeTracker* self, double delta) c_hdy_swipe_tracker_shift_position;

	// handy.Swipeable

	GType function() c_hdy_swipeable_get_type;
	void function(HdySwipeable* self, uint index, long duration) c_hdy_swipeable_emit_child_switched;
	double function(HdySwipeable* self) c_hdy_swipeable_get_cancel_progress;
	double function(HdySwipeable* self) c_hdy_swipeable_get_distance;
	double function(HdySwipeable* self) c_hdy_swipeable_get_progress;
	double* function(HdySwipeable* self, int* nSnapPoints) c_hdy_swipeable_get_snap_points;
	void function(HdySwipeable* self, HdyNavigationDirection navigationDirection, int isDrag, GdkRectangle* rect) c_hdy_swipeable_get_swipe_area;
	HdySwipeTracker* function(HdySwipeable* self) c_hdy_swipeable_get_swipe_tracker;
	void function(HdySwipeable* self, uint index, long duration) c_hdy_swipeable_switch_child;

	// handy.TitleBar

	GType function() c_hdy_title_bar_get_type;
	GtkWidget* function() c_hdy_title_bar_new;
	int function(HdyTitleBar* self) c_hdy_title_bar_get_selection_mode;
	void function(HdyTitleBar* self, int selectionMode) c_hdy_title_bar_set_selection_mode;

	// handy.ValueObject

	GType function() c_hdy_value_object_get_type;
	HdyValueObject* function(GValue* value) c_hdy_value_object_new;
	HdyValueObject* function(GType type, ... ) c_hdy_value_object_new_collect;
	HdyValueObject* function(const(char)* string_) c_hdy_value_object_new_string;
	HdyValueObject* function(char* string_) c_hdy_value_object_new_take_string;
	void function(HdyValueObject* value, GValue* dest) c_hdy_value_object_copy_value;
	char* function(HdyValueObject* value) c_hdy_value_object_dup_string;
	const(char)* function(HdyValueObject* value) c_hdy_value_object_get_string;
	GValue* function(HdyValueObject* value) c_hdy_value_object_get_value;

	// handy.ViewSwitcher

	GType function() c_hdy_view_switcher_get_type;
	GtkWidget* function() c_hdy_view_switcher_new;
	PangoEllipsizeMode function(HdyViewSwitcher* self) c_hdy_view_switcher_get_narrow_ellipsize;
	HdyViewSwitcherPolicy function(HdyViewSwitcher* self) c_hdy_view_switcher_get_policy;
	GtkStack* function(HdyViewSwitcher* self) c_hdy_view_switcher_get_stack;
	void function(HdyViewSwitcher* self, PangoEllipsizeMode mode) c_hdy_view_switcher_set_narrow_ellipsize;
	void function(HdyViewSwitcher* self, HdyViewSwitcherPolicy policy) c_hdy_view_switcher_set_policy;
	void function(HdyViewSwitcher* self, GtkStack* stack) c_hdy_view_switcher_set_stack;

	// handy.ViewSwitcherBar

	GType function() c_hdy_view_switcher_bar_get_type;
	GtkWidget* function() c_hdy_view_switcher_bar_new;
	HdyViewSwitcherPolicy function(HdyViewSwitcherBar* self) c_hdy_view_switcher_bar_get_policy;
	int function(HdyViewSwitcherBar* self) c_hdy_view_switcher_bar_get_reveal;
	GtkStack* function(HdyViewSwitcherBar* self) c_hdy_view_switcher_bar_get_stack;
	void function(HdyViewSwitcherBar* self, HdyViewSwitcherPolicy policy) c_hdy_view_switcher_bar_set_policy;
	void function(HdyViewSwitcherBar* self, int reveal) c_hdy_view_switcher_bar_set_reveal;
	void function(HdyViewSwitcherBar* self, GtkStack* stack) c_hdy_view_switcher_bar_set_stack;

	// handy.ViewSwitcherTitle

	GType function() c_hdy_view_switcher_title_get_type;
	HdyViewSwitcherTitle* function() c_hdy_view_switcher_title_new;
	HdyViewSwitcherPolicy function(HdyViewSwitcherTitle* self) c_hdy_view_switcher_title_get_policy;
	GtkStack* function(HdyViewSwitcherTitle* self) c_hdy_view_switcher_title_get_stack;
	const(char)* function(HdyViewSwitcherTitle* self) c_hdy_view_switcher_title_get_subtitle;
	const(char)* function(HdyViewSwitcherTitle* self) c_hdy_view_switcher_title_get_title;
	int function(HdyViewSwitcherTitle* self) c_hdy_view_switcher_title_get_title_visible;
	int function(HdyViewSwitcherTitle* self) c_hdy_view_switcher_title_get_view_switcher_enabled;
	void function(HdyViewSwitcherTitle* self, HdyViewSwitcherPolicy policy) c_hdy_view_switcher_title_set_policy;
	void function(HdyViewSwitcherTitle* self, GtkStack* stack) c_hdy_view_switcher_title_set_stack;
	void function(HdyViewSwitcherTitle* self, const(char)* subtitle) c_hdy_view_switcher_title_set_subtitle;
	void function(HdyViewSwitcherTitle* self, const(char)* title) c_hdy_view_switcher_title_set_title;
	void function(HdyViewSwitcherTitle* self, int enabled) c_hdy_view_switcher_title_set_view_switcher_enabled;

	// handy.Window

	GType function() c_hdy_window_get_type;
	GtkWidget* function() c_hdy_window_new;

	// handy.WindowHandle

	GType function() c_hdy_window_handle_get_type;
	GtkWidget* function() c_hdy_window_handle_new;
}


// handy.ActionRow

alias c_hdy_action_row_get_type hdy_action_row_get_type;
alias c_hdy_action_row_new hdy_action_row_new;
alias c_hdy_action_row_activate hdy_action_row_activate;
alias c_hdy_action_row_add_prefix hdy_action_row_add_prefix;
alias c_hdy_action_row_get_activatable_widget hdy_action_row_get_activatable_widget;
alias c_hdy_action_row_get_icon_name hdy_action_row_get_icon_name;
alias c_hdy_action_row_get_subtitle hdy_action_row_get_subtitle;
alias c_hdy_action_row_get_use_underline hdy_action_row_get_use_underline;
alias c_hdy_action_row_set_activatable_widget hdy_action_row_set_activatable_widget;
alias c_hdy_action_row_set_icon_name hdy_action_row_set_icon_name;
alias c_hdy_action_row_set_subtitle hdy_action_row_set_subtitle;
alias c_hdy_action_row_set_use_underline hdy_action_row_set_use_underline;

// handy.ApplicationWindow

alias c_hdy_application_window_get_type hdy_application_window_get_type;
alias c_hdy_application_window_new hdy_application_window_new;

// handy.Avatar

alias c_hdy_avatar_get_type hdy_avatar_get_type;
alias c_hdy_avatar_new hdy_avatar_new;
alias c_hdy_avatar_get_icon_name hdy_avatar_get_icon_name;
alias c_hdy_avatar_get_show_initials hdy_avatar_get_show_initials;
alias c_hdy_avatar_get_size hdy_avatar_get_size;
alias c_hdy_avatar_get_text hdy_avatar_get_text;
alias c_hdy_avatar_set_icon_name hdy_avatar_set_icon_name;
alias c_hdy_avatar_set_image_load_func hdy_avatar_set_image_load_func;
alias c_hdy_avatar_set_show_initials hdy_avatar_set_show_initials;
alias c_hdy_avatar_set_size hdy_avatar_set_size;
alias c_hdy_avatar_set_text hdy_avatar_set_text;

// handy.Carousel

alias c_hdy_carousel_get_type hdy_carousel_get_type;
alias c_hdy_carousel_new hdy_carousel_new;
alias c_hdy_carousel_get_allow_mouse_drag hdy_carousel_get_allow_mouse_drag;
alias c_hdy_carousel_get_animation_duration hdy_carousel_get_animation_duration;
alias c_hdy_carousel_get_interactive hdy_carousel_get_interactive;
alias c_hdy_carousel_get_n_pages hdy_carousel_get_n_pages;
alias c_hdy_carousel_get_position hdy_carousel_get_position;
alias c_hdy_carousel_get_reveal_duration hdy_carousel_get_reveal_duration;
alias c_hdy_carousel_get_spacing hdy_carousel_get_spacing;
alias c_hdy_carousel_insert hdy_carousel_insert;
alias c_hdy_carousel_prepend hdy_carousel_prepend;
alias c_hdy_carousel_reorder hdy_carousel_reorder;
alias c_hdy_carousel_scroll_to hdy_carousel_scroll_to;
alias c_hdy_carousel_scroll_to_full hdy_carousel_scroll_to_full;
alias c_hdy_carousel_set_allow_mouse_drag hdy_carousel_set_allow_mouse_drag;
alias c_hdy_carousel_set_animation_duration hdy_carousel_set_animation_duration;
alias c_hdy_carousel_set_interactive hdy_carousel_set_interactive;
alias c_hdy_carousel_set_reveal_duration hdy_carousel_set_reveal_duration;
alias c_hdy_carousel_set_spacing hdy_carousel_set_spacing;

// handy.CarouselIndicatorDots

alias c_hdy_carousel_indicator_dots_get_type hdy_carousel_indicator_dots_get_type;
alias c_hdy_carousel_indicator_dots_new hdy_carousel_indicator_dots_new;
alias c_hdy_carousel_indicator_dots_get_carousel hdy_carousel_indicator_dots_get_carousel;
alias c_hdy_carousel_indicator_dots_set_carousel hdy_carousel_indicator_dots_set_carousel;

// handy.CarouselIndicatorLines

alias c_hdy_carousel_indicator_lines_get_type hdy_carousel_indicator_lines_get_type;
alias c_hdy_carousel_indicator_lines_new hdy_carousel_indicator_lines_new;
alias c_hdy_carousel_indicator_lines_get_carousel hdy_carousel_indicator_lines_get_carousel;
alias c_hdy_carousel_indicator_lines_set_carousel hdy_carousel_indicator_lines_set_carousel;

// handy.Clamp

alias c_hdy_clamp_get_type hdy_clamp_get_type;
alias c_hdy_clamp_new hdy_clamp_new;
alias c_hdy_clamp_get_maximum_size hdy_clamp_get_maximum_size;
alias c_hdy_clamp_get_tightening_threshold hdy_clamp_get_tightening_threshold;
alias c_hdy_clamp_set_maximum_size hdy_clamp_set_maximum_size;
alias c_hdy_clamp_set_tightening_threshold hdy_clamp_set_tightening_threshold;

// handy.ComboRow

alias c_hdy_combo_row_get_type hdy_combo_row_get_type;
alias c_hdy_combo_row_new hdy_combo_row_new;
alias c_hdy_combo_row_bind_model hdy_combo_row_bind_model;
alias c_hdy_combo_row_bind_name_model hdy_combo_row_bind_name_model;
alias c_hdy_combo_row_get_model hdy_combo_row_get_model;
alias c_hdy_combo_row_get_selected_index hdy_combo_row_get_selected_index;
alias c_hdy_combo_row_get_use_subtitle hdy_combo_row_get_use_subtitle;
alias c_hdy_combo_row_set_for_enum hdy_combo_row_set_for_enum;
alias c_hdy_combo_row_set_get_name_func hdy_combo_row_set_get_name_func;
alias c_hdy_combo_row_set_selected_index hdy_combo_row_set_selected_index;
alias c_hdy_combo_row_set_use_subtitle hdy_combo_row_set_use_subtitle;

// handy.Deck

alias c_hdy_deck_get_type hdy_deck_get_type;
alias c_hdy_deck_new hdy_deck_new;
alias c_hdy_deck_get_adjacent_child hdy_deck_get_adjacent_child;
alias c_hdy_deck_get_can_swipe_back hdy_deck_get_can_swipe_back;
alias c_hdy_deck_get_can_swipe_forward hdy_deck_get_can_swipe_forward;
alias c_hdy_deck_get_child_by_name hdy_deck_get_child_by_name;
alias c_hdy_deck_get_homogeneous hdy_deck_get_homogeneous;
alias c_hdy_deck_get_interpolate_size hdy_deck_get_interpolate_size;
alias c_hdy_deck_get_transition_duration hdy_deck_get_transition_duration;
alias c_hdy_deck_get_transition_running hdy_deck_get_transition_running;
alias c_hdy_deck_get_transition_type hdy_deck_get_transition_type;
alias c_hdy_deck_get_visible_child hdy_deck_get_visible_child;
alias c_hdy_deck_get_visible_child_name hdy_deck_get_visible_child_name;
alias c_hdy_deck_navigate hdy_deck_navigate;
alias c_hdy_deck_set_can_swipe_back hdy_deck_set_can_swipe_back;
alias c_hdy_deck_set_can_swipe_forward hdy_deck_set_can_swipe_forward;
alias c_hdy_deck_set_homogeneous hdy_deck_set_homogeneous;
alias c_hdy_deck_set_interpolate_size hdy_deck_set_interpolate_size;
alias c_hdy_deck_set_transition_duration hdy_deck_set_transition_duration;
alias c_hdy_deck_set_transition_type hdy_deck_set_transition_type;
alias c_hdy_deck_set_visible_child hdy_deck_set_visible_child;
alias c_hdy_deck_set_visible_child_name hdy_deck_set_visible_child_name;

// handy.EnumValueObject

alias c_hdy_enum_value_object_get_type hdy_enum_value_object_get_type;
alias c_hdy_enum_value_object_new hdy_enum_value_object_new;
alias c_hdy_enum_value_object_get_name hdy_enum_value_object_get_name;
alias c_hdy_enum_value_object_get_nick hdy_enum_value_object_get_nick;
alias c_hdy_enum_value_object_get_value hdy_enum_value_object_get_value;

// handy.ExpanderRow

alias c_hdy_expander_row_get_type hdy_expander_row_get_type;
alias c_hdy_expander_row_new hdy_expander_row_new;
alias c_hdy_expander_row_add_action hdy_expander_row_add_action;
alias c_hdy_expander_row_add_prefix hdy_expander_row_add_prefix;
alias c_hdy_expander_row_get_enable_expansion hdy_expander_row_get_enable_expansion;
alias c_hdy_expander_row_get_expanded hdy_expander_row_get_expanded;
alias c_hdy_expander_row_get_icon_name hdy_expander_row_get_icon_name;
alias c_hdy_expander_row_get_show_enable_switch hdy_expander_row_get_show_enable_switch;
alias c_hdy_expander_row_get_subtitle hdy_expander_row_get_subtitle;
alias c_hdy_expander_row_get_use_underline hdy_expander_row_get_use_underline;
alias c_hdy_expander_row_set_enable_expansion hdy_expander_row_set_enable_expansion;
alias c_hdy_expander_row_set_expanded hdy_expander_row_set_expanded;
alias c_hdy_expander_row_set_icon_name hdy_expander_row_set_icon_name;
alias c_hdy_expander_row_set_show_enable_switch hdy_expander_row_set_show_enable_switch;
alias c_hdy_expander_row_set_subtitle hdy_expander_row_set_subtitle;
alias c_hdy_expander_row_set_use_underline hdy_expander_row_set_use_underline;

// handy.HeaderBar

alias c_hdy_header_bar_get_type hdy_header_bar_get_type;
alias c_hdy_header_bar_new hdy_header_bar_new;
alias c_hdy_header_bar_get_centering_policy hdy_header_bar_get_centering_policy;
alias c_hdy_header_bar_get_custom_title hdy_header_bar_get_custom_title;
alias c_hdy_header_bar_get_decoration_layout hdy_header_bar_get_decoration_layout;
alias c_hdy_header_bar_get_has_subtitle hdy_header_bar_get_has_subtitle;
alias c_hdy_header_bar_get_interpolate_size hdy_header_bar_get_interpolate_size;
alias c_hdy_header_bar_get_show_close_button hdy_header_bar_get_show_close_button;
alias c_hdy_header_bar_get_subtitle hdy_header_bar_get_subtitle;
alias c_hdy_header_bar_get_title hdy_header_bar_get_title;
alias c_hdy_header_bar_get_transition_duration hdy_header_bar_get_transition_duration;
alias c_hdy_header_bar_get_transition_running hdy_header_bar_get_transition_running;
alias c_hdy_header_bar_pack_end hdy_header_bar_pack_end;
alias c_hdy_header_bar_pack_start hdy_header_bar_pack_start;
alias c_hdy_header_bar_set_centering_policy hdy_header_bar_set_centering_policy;
alias c_hdy_header_bar_set_custom_title hdy_header_bar_set_custom_title;
alias c_hdy_header_bar_set_decoration_layout hdy_header_bar_set_decoration_layout;
alias c_hdy_header_bar_set_has_subtitle hdy_header_bar_set_has_subtitle;
alias c_hdy_header_bar_set_interpolate_size hdy_header_bar_set_interpolate_size;
alias c_hdy_header_bar_set_show_close_button hdy_header_bar_set_show_close_button;
alias c_hdy_header_bar_set_subtitle hdy_header_bar_set_subtitle;
alias c_hdy_header_bar_set_title hdy_header_bar_set_title;
alias c_hdy_header_bar_set_transition_duration hdy_header_bar_set_transition_duration;

// handy.HeaderGroup

alias c_hdy_header_group_get_type hdy_header_group_get_type;
alias c_hdy_header_group_new hdy_header_group_new;
alias c_hdy_header_group_add_gtk_header_bar hdy_header_group_add_gtk_header_bar;
alias c_hdy_header_group_add_header_bar hdy_header_group_add_header_bar;
alias c_hdy_header_group_add_header_group hdy_header_group_add_header_group;
alias c_hdy_header_group_get_children hdy_header_group_get_children;
alias c_hdy_header_group_get_decorate_all hdy_header_group_get_decorate_all;
alias c_hdy_header_group_remove_child hdy_header_group_remove_child;
alias c_hdy_header_group_remove_gtk_header_bar hdy_header_group_remove_gtk_header_bar;
alias c_hdy_header_group_remove_header_bar hdy_header_group_remove_header_bar;
alias c_hdy_header_group_remove_header_group hdy_header_group_remove_header_group;
alias c_hdy_header_group_set_decorate_all hdy_header_group_set_decorate_all;

// handy.HeaderGroupChild

alias c_hdy_header_group_child_get_type hdy_header_group_child_get_type;
alias c_hdy_header_group_child_get_child_type hdy_header_group_child_get_child_type;
alias c_hdy_header_group_child_get_gtk_header_bar hdy_header_group_child_get_gtk_header_bar;
alias c_hdy_header_group_child_get_header_bar hdy_header_group_child_get_header_bar;
alias c_hdy_header_group_child_get_header_group hdy_header_group_child_get_header_group;

// handy.Keypad

alias c_hdy_keypad_get_type hdy_keypad_get_type;
alias c_hdy_keypad_new hdy_keypad_new;
alias c_hdy_keypad_get_column_spacing hdy_keypad_get_column_spacing;
alias c_hdy_keypad_get_end_action hdy_keypad_get_end_action;
alias c_hdy_keypad_get_entry hdy_keypad_get_entry;
alias c_hdy_keypad_get_letters_visible hdy_keypad_get_letters_visible;
alias c_hdy_keypad_get_row_spacing hdy_keypad_get_row_spacing;
alias c_hdy_keypad_get_start_action hdy_keypad_get_start_action;
alias c_hdy_keypad_get_symbols_visible hdy_keypad_get_symbols_visible;
alias c_hdy_keypad_set_column_spacing hdy_keypad_set_column_spacing;
alias c_hdy_keypad_set_end_action hdy_keypad_set_end_action;
alias c_hdy_keypad_set_entry hdy_keypad_set_entry;
alias c_hdy_keypad_set_letters_visible hdy_keypad_set_letters_visible;
alias c_hdy_keypad_set_row_spacing hdy_keypad_set_row_spacing;
alias c_hdy_keypad_set_start_action hdy_keypad_set_start_action;
alias c_hdy_keypad_set_symbols_visible hdy_keypad_set_symbols_visible;

// handy.Leaflet

alias c_hdy_leaflet_get_type hdy_leaflet_get_type;
alias c_hdy_leaflet_new hdy_leaflet_new;
alias c_hdy_leaflet_get_adjacent_child hdy_leaflet_get_adjacent_child;
alias c_hdy_leaflet_get_can_swipe_back hdy_leaflet_get_can_swipe_back;
alias c_hdy_leaflet_get_can_swipe_forward hdy_leaflet_get_can_swipe_forward;
alias c_hdy_leaflet_get_child_by_name hdy_leaflet_get_child_by_name;
alias c_hdy_leaflet_get_child_transition_duration hdy_leaflet_get_child_transition_duration;
alias c_hdy_leaflet_get_child_transition_running hdy_leaflet_get_child_transition_running;
alias c_hdy_leaflet_get_folded hdy_leaflet_get_folded;
alias c_hdy_leaflet_get_homogeneous hdy_leaflet_get_homogeneous;
alias c_hdy_leaflet_get_interpolate_size hdy_leaflet_get_interpolate_size;
alias c_hdy_leaflet_get_mode_transition_duration hdy_leaflet_get_mode_transition_duration;
alias c_hdy_leaflet_get_transition_type hdy_leaflet_get_transition_type;
alias c_hdy_leaflet_get_visible_child hdy_leaflet_get_visible_child;
alias c_hdy_leaflet_get_visible_child_name hdy_leaflet_get_visible_child_name;
alias c_hdy_leaflet_navigate hdy_leaflet_navigate;
alias c_hdy_leaflet_set_can_swipe_back hdy_leaflet_set_can_swipe_back;
alias c_hdy_leaflet_set_can_swipe_forward hdy_leaflet_set_can_swipe_forward;
alias c_hdy_leaflet_set_child_transition_duration hdy_leaflet_set_child_transition_duration;
alias c_hdy_leaflet_set_homogeneous hdy_leaflet_set_homogeneous;
alias c_hdy_leaflet_set_interpolate_size hdy_leaflet_set_interpolate_size;
alias c_hdy_leaflet_set_mode_transition_duration hdy_leaflet_set_mode_transition_duration;
alias c_hdy_leaflet_set_transition_type hdy_leaflet_set_transition_type;
alias c_hdy_leaflet_set_visible_child hdy_leaflet_set_visible_child;
alias c_hdy_leaflet_set_visible_child_name hdy_leaflet_set_visible_child_name;

// handy.PreferencesGroup

alias c_hdy_preferences_group_get_type hdy_preferences_group_get_type;
alias c_hdy_preferences_group_new hdy_preferences_group_new;
alias c_hdy_preferences_group_get_description hdy_preferences_group_get_description;
alias c_hdy_preferences_group_get_title hdy_preferences_group_get_title;
alias c_hdy_preferences_group_set_description hdy_preferences_group_set_description;
alias c_hdy_preferences_group_set_title hdy_preferences_group_set_title;

// handy.PreferencesPage

alias c_hdy_preferences_page_get_type hdy_preferences_page_get_type;
alias c_hdy_preferences_page_new hdy_preferences_page_new;
alias c_hdy_preferences_page_get_icon_name hdy_preferences_page_get_icon_name;
alias c_hdy_preferences_page_get_title hdy_preferences_page_get_title;
alias c_hdy_preferences_page_set_icon_name hdy_preferences_page_set_icon_name;
alias c_hdy_preferences_page_set_title hdy_preferences_page_set_title;

// handy.PreferencesRow

alias c_hdy_preferences_row_get_type hdy_preferences_row_get_type;
alias c_hdy_preferences_row_new hdy_preferences_row_new;
alias c_hdy_preferences_row_get_title hdy_preferences_row_get_title;
alias c_hdy_preferences_row_get_use_underline hdy_preferences_row_get_use_underline;
alias c_hdy_preferences_row_set_title hdy_preferences_row_set_title;
alias c_hdy_preferences_row_set_use_underline hdy_preferences_row_set_use_underline;

// handy.PreferencesWindow

alias c_hdy_preferences_window_get_type hdy_preferences_window_get_type;
alias c_hdy_preferences_window_new hdy_preferences_window_new;
alias c_hdy_preferences_window_close_subpage hdy_preferences_window_close_subpage;
alias c_hdy_preferences_window_get_can_swipe_back hdy_preferences_window_get_can_swipe_back;
alias c_hdy_preferences_window_get_search_enabled hdy_preferences_window_get_search_enabled;
alias c_hdy_preferences_window_present_subpage hdy_preferences_window_present_subpage;
alias c_hdy_preferences_window_set_can_swipe_back hdy_preferences_window_set_can_swipe_back;
alias c_hdy_preferences_window_set_search_enabled hdy_preferences_window_set_search_enabled;

// handy.SearchBar

alias c_hdy_search_bar_get_type hdy_search_bar_get_type;
alias c_hdy_search_bar_new hdy_search_bar_new;
alias c_hdy_search_bar_connect_entry hdy_search_bar_connect_entry;
alias c_hdy_search_bar_get_search_mode hdy_search_bar_get_search_mode;
alias c_hdy_search_bar_get_show_close_button hdy_search_bar_get_show_close_button;
alias c_hdy_search_bar_handle_event hdy_search_bar_handle_event;
alias c_hdy_search_bar_set_search_mode hdy_search_bar_set_search_mode;
alias c_hdy_search_bar_set_show_close_button hdy_search_bar_set_show_close_button;

// handy.Squeezer

alias c_hdy_squeezer_get_type hdy_squeezer_get_type;
alias c_hdy_squeezer_new hdy_squeezer_new;
alias c_hdy_squeezer_get_child_enabled hdy_squeezer_get_child_enabled;
alias c_hdy_squeezer_get_homogeneous hdy_squeezer_get_homogeneous;
alias c_hdy_squeezer_get_interpolate_size hdy_squeezer_get_interpolate_size;
alias c_hdy_squeezer_get_transition_duration hdy_squeezer_get_transition_duration;
alias c_hdy_squeezer_get_transition_running hdy_squeezer_get_transition_running;
alias c_hdy_squeezer_get_transition_type hdy_squeezer_get_transition_type;
alias c_hdy_squeezer_get_visible_child hdy_squeezer_get_visible_child;
alias c_hdy_squeezer_get_xalign hdy_squeezer_get_xalign;
alias c_hdy_squeezer_get_yalign hdy_squeezer_get_yalign;
alias c_hdy_squeezer_set_child_enabled hdy_squeezer_set_child_enabled;
alias c_hdy_squeezer_set_homogeneous hdy_squeezer_set_homogeneous;
alias c_hdy_squeezer_set_interpolate_size hdy_squeezer_set_interpolate_size;
alias c_hdy_squeezer_set_transition_duration hdy_squeezer_set_transition_duration;
alias c_hdy_squeezer_set_transition_type hdy_squeezer_set_transition_type;
alias c_hdy_squeezer_set_xalign hdy_squeezer_set_xalign;
alias c_hdy_squeezer_set_yalign hdy_squeezer_set_yalign;

// handy.SwipeGroup

alias c_hdy_swipe_group_get_type hdy_swipe_group_get_type;
alias c_hdy_swipe_group_new hdy_swipe_group_new;
alias c_hdy_swipe_group_add_swipeable hdy_swipe_group_add_swipeable;
alias c_hdy_swipe_group_get_swipeables hdy_swipe_group_get_swipeables;
alias c_hdy_swipe_group_remove_swipeable hdy_swipe_group_remove_swipeable;

// handy.SwipeTracker

alias c_hdy_swipe_tracker_get_type hdy_swipe_tracker_get_type;
alias c_hdy_swipe_tracker_new hdy_swipe_tracker_new;
alias c_hdy_swipe_tracker_get_allow_mouse_drag hdy_swipe_tracker_get_allow_mouse_drag;
alias c_hdy_swipe_tracker_get_enabled hdy_swipe_tracker_get_enabled;
alias c_hdy_swipe_tracker_get_reversed hdy_swipe_tracker_get_reversed;
alias c_hdy_swipe_tracker_get_swipeable hdy_swipe_tracker_get_swipeable;
alias c_hdy_swipe_tracker_set_allow_mouse_drag hdy_swipe_tracker_set_allow_mouse_drag;
alias c_hdy_swipe_tracker_set_enabled hdy_swipe_tracker_set_enabled;
alias c_hdy_swipe_tracker_set_reversed hdy_swipe_tracker_set_reversed;
alias c_hdy_swipe_tracker_shift_position hdy_swipe_tracker_shift_position;

// handy.Swipeable

alias c_hdy_swipeable_get_type hdy_swipeable_get_type;
alias c_hdy_swipeable_emit_child_switched hdy_swipeable_emit_child_switched;
alias c_hdy_swipeable_get_cancel_progress hdy_swipeable_get_cancel_progress;
alias c_hdy_swipeable_get_distance hdy_swipeable_get_distance;
alias c_hdy_swipeable_get_progress hdy_swipeable_get_progress;
alias c_hdy_swipeable_get_snap_points hdy_swipeable_get_snap_points;
alias c_hdy_swipeable_get_swipe_area hdy_swipeable_get_swipe_area;
alias c_hdy_swipeable_get_swipe_tracker hdy_swipeable_get_swipe_tracker;
alias c_hdy_swipeable_switch_child hdy_swipeable_switch_child;

// handy.TitleBar

alias c_hdy_title_bar_get_type hdy_title_bar_get_type;
alias c_hdy_title_bar_new hdy_title_bar_new;
alias c_hdy_title_bar_get_selection_mode hdy_title_bar_get_selection_mode;
alias c_hdy_title_bar_set_selection_mode hdy_title_bar_set_selection_mode;

// handy.ValueObject

alias c_hdy_value_object_get_type hdy_value_object_get_type;
alias c_hdy_value_object_new hdy_value_object_new;
alias c_hdy_value_object_new_collect hdy_value_object_new_collect;
alias c_hdy_value_object_new_string hdy_value_object_new_string;
alias c_hdy_value_object_new_take_string hdy_value_object_new_take_string;
alias c_hdy_value_object_copy_value hdy_value_object_copy_value;
alias c_hdy_value_object_dup_string hdy_value_object_dup_string;
alias c_hdy_value_object_get_string hdy_value_object_get_string;
alias c_hdy_value_object_get_value hdy_value_object_get_value;

// handy.ViewSwitcher

alias c_hdy_view_switcher_get_type hdy_view_switcher_get_type;
alias c_hdy_view_switcher_new hdy_view_switcher_new;
alias c_hdy_view_switcher_get_narrow_ellipsize hdy_view_switcher_get_narrow_ellipsize;
alias c_hdy_view_switcher_get_policy hdy_view_switcher_get_policy;
alias c_hdy_view_switcher_get_stack hdy_view_switcher_get_stack;
alias c_hdy_view_switcher_set_narrow_ellipsize hdy_view_switcher_set_narrow_ellipsize;
alias c_hdy_view_switcher_set_policy hdy_view_switcher_set_policy;
alias c_hdy_view_switcher_set_stack hdy_view_switcher_set_stack;

// handy.ViewSwitcherBar

alias c_hdy_view_switcher_bar_get_type hdy_view_switcher_bar_get_type;
alias c_hdy_view_switcher_bar_new hdy_view_switcher_bar_new;
alias c_hdy_view_switcher_bar_get_policy hdy_view_switcher_bar_get_policy;
alias c_hdy_view_switcher_bar_get_reveal hdy_view_switcher_bar_get_reveal;
alias c_hdy_view_switcher_bar_get_stack hdy_view_switcher_bar_get_stack;
alias c_hdy_view_switcher_bar_set_policy hdy_view_switcher_bar_set_policy;
alias c_hdy_view_switcher_bar_set_reveal hdy_view_switcher_bar_set_reveal;
alias c_hdy_view_switcher_bar_set_stack hdy_view_switcher_bar_set_stack;

// handy.ViewSwitcherTitle

alias c_hdy_view_switcher_title_get_type hdy_view_switcher_title_get_type;
alias c_hdy_view_switcher_title_new hdy_view_switcher_title_new;
alias c_hdy_view_switcher_title_get_policy hdy_view_switcher_title_get_policy;
alias c_hdy_view_switcher_title_get_stack hdy_view_switcher_title_get_stack;
alias c_hdy_view_switcher_title_get_subtitle hdy_view_switcher_title_get_subtitle;
alias c_hdy_view_switcher_title_get_title hdy_view_switcher_title_get_title;
alias c_hdy_view_switcher_title_get_title_visible hdy_view_switcher_title_get_title_visible;
alias c_hdy_view_switcher_title_get_view_switcher_enabled hdy_view_switcher_title_get_view_switcher_enabled;
alias c_hdy_view_switcher_title_set_policy hdy_view_switcher_title_set_policy;
alias c_hdy_view_switcher_title_set_stack hdy_view_switcher_title_set_stack;
alias c_hdy_view_switcher_title_set_subtitle hdy_view_switcher_title_set_subtitle;
alias c_hdy_view_switcher_title_set_title hdy_view_switcher_title_set_title;
alias c_hdy_view_switcher_title_set_view_switcher_enabled hdy_view_switcher_title_set_view_switcher_enabled;

// handy.Window

alias c_hdy_window_get_type hdy_window_get_type;
alias c_hdy_window_new hdy_window_new;

// handy.WindowHandle

alias c_hdy_window_handle_get_type hdy_window_handle_get_type;
alias c_hdy_window_handle_new hdy_window_handle_new;
