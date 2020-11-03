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
module handy.c.types;

public import gdk.c.types;
public import gio.c.types;
public import glib.c.types;
public import gobject.c.types;
public import gtk.c.types;
public import pango.c.types;


public enum HdyCenteringPolicy
{
	/**
	 * Keep the title centered when possible
	 */
	LOOSE = 0,
	/**
	 * Keep the title centered at all cost
	 */
	STRICT = 1,
}
alias HdyCenteringPolicy CenteringPolicy;

/**
 * This enumeration value describes the possible transitions between children
 * in a #HdyDeck widget.
 *
 * New values may be added to this enumeration over time.
 *
 * Since: 1.0
 */
public enum HdyDeckTransitionType
{
	/**
	 * Cover the old page or uncover the new page, sliding from or towards the end according to orientation, text direction and children order
	 */
	OVER = 0,
	/**
	 * Uncover the new page or cover the old page, sliding from or towards the start according to orientation, text direction and children order
	 */
	UNDER = 1,
	/**
	 * Slide from left, right, up or down according to the orientation, text direction and the children order
	 */
	SLIDE = 2,
}
alias HdyDeckTransitionType DeckTransitionType;

/**
 * This enumeration value describes the child types handled by #HdyHeaderGroup.
 *
 * New values may be added to this enumeration over time.
 *
 * Since: 1.0
 */
public enum HdyHeaderGroupChildType
{
	/**
	 * The child is a #HdyHeaderBar
	 */
	HEADER_BAR = 0,
	/**
	 * The child is a #GtkHeaderBar
	 */
	GTK_HEADER_BAR = 1,
	/**
	 * The child is a #HdyHeaderGroup
	 */
	HEADER_GROUP = 2,
}
alias HdyHeaderGroupChildType HeaderGroupChildType;

/**
 * This enumeration value describes the possible transitions between modes and
 * children in a #HdyLeaflet widget.
 *
 * New values may be added to this enumeration over time.
 *
 * Since: 0.0.12
 */
public enum HdyLeafletTransitionType
{
	/**
	 * Cover the old page or uncover the new page, sliding from or towards the end according to orientation, text direction and children order
	 */
	OVER = 0,
	/**
	 * Uncover the new page or cover the old page, sliding from or towards the start according to orientation, text direction and children order
	 */
	UNDER = 1,
	/**
	 * Slide from left, right, up or down according to the orientation, text direction and the children order
	 */
	SLIDE = 2,
}
alias HdyLeafletTransitionType LeafletTransitionType;

/**
 * Represents direction of a swipe navigation gesture in #HdyDeck and
 * #HdyLeaflet.
 *
 * Since: 1.0
 */
public enum HdyNavigationDirection
{
	/**
	 * Corresponds to start or top, depending on orientation and text direction
	 */
	BACK = 0,
	/**
	 * Corresponds to end or bottom, depending on orientation and text direction
	 */
	FORWARD = 1,
}
alias HdyNavigationDirection NavigationDirection;

/**
 * These enumeration values describe the possible transitions between children
 * in a #HdySqueezer widget.
 */
public enum HdySqueezerTransitionType
{
	/**
	 * No transition
	 */
	NONE = 0,
	/**
	 * A cross-fade
	 */
	CROSSFADE = 1,
}
alias HdySqueezerTransitionType SqueezerTransitionType;

public enum HdyViewSwitcherPolicy
{
	/**
	 * Automatically adapt to the best fitting mode
	 */
	AUTO = 0,
	/**
	 * Force the narrow mode
	 */
	NARROW = 1,
	/**
	 * Force the wide mode
	 */
	WIDE = 2,
}
alias HdyViewSwitcherPolicy ViewSwitcherPolicy;

struct HdyActionRow
{
	HdyPreferencesRow parentInstance;
}

struct HdyActionRowClass
{
	/**
	 * The parent class
	 */
	GtkListBoxRowClass parentClass;
	/** */
	extern(C) void function(HdyActionRow* self) activate;
	void*[4] padding;
}

struct HdyApplicationWindow
{
	GtkApplicationWindow parentInstance;
}

struct HdyApplicationWindowClass
{
	GtkApplicationWindowClass parentClass;
	void*[4] padding;
}

struct HdyAvatar;

struct HdyAvatarClass
{
	GtkDrawingAreaClass parentClass;
}

struct HdyCarousel;

struct HdyCarouselClass
{
	GtkEventBoxClass parentClass;
}

struct HdyCarouselIndicatorDots;

struct HdyCarouselIndicatorDotsClass
{
	GtkDrawingAreaClass parentClass;
}

struct HdyCarouselIndicatorLines;

struct HdyCarouselIndicatorLinesClass
{
	GtkDrawingAreaClass parentClass;
}

struct HdyClamp;

struct HdyClampClass
{
	GtkBinClass parentClass;
}

struct HdyComboRow
{
	HdyActionRow parentInstance;
}

struct HdyComboRowClass
{
	/**
	 * The parent class
	 */
	HdyActionRowClass parentClass;
	void*[4] padding;
}

struct HdyDeck
{
	GtkContainer parentInstance;
}

struct HdyDeckClass
{
	/**
	 * The parent class
	 */
	GtkContainerClass parentClass;
	void*[4] padding;
}

struct HdyEnumValueObject;

struct HdyEnumValueObjectClass
{
	GObjectClass parentClass;
}

struct HdyExpanderRow
{
	HdyPreferencesRow parentInstance;
}

struct HdyExpanderRowClass
{
	/**
	 * The parent class
	 */
	HdyPreferencesRowClass parentClass;
	void*[4] padding;
}

struct HdyHeaderBar
{
	GtkContainer parentInstance;
}

struct HdyHeaderBarClass
{
	/**
	 * The parent class
	 */
	GtkContainerClass parentClass;
	void*[4] padding;
}

struct HdyHeaderGroup;

struct HdyHeaderGroupChild;

struct HdyHeaderGroupChildClass
{
	GObjectClass parentClass;
}

struct HdyHeaderGroupClass
{
	GObjectClass parentClass;
}

struct HdyKeypad
{
	GtkBin parentInstance;
}

struct HdyKeypadClass
{
	/**
	 * The parent class
	 */
	GtkBinClass parentClass;
	void*[4] padding;
}

struct HdyLeaflet
{
	GtkContainer parentInstance;
}

struct HdyLeafletClass
{
	/**
	 * The parent class
	 */
	GtkContainerClass parentClass;
	void*[4] padding;
}

struct HdyPreferencesGroup
{
	GtkBin parentInstance;
}

struct HdyPreferencesGroupClass
{
	/**
	 * The parent class
	 */
	GtkBinClass parentClass;
	void*[4] padding;
}

struct HdyPreferencesPage
{
	GtkBin parentInstance;
}

struct HdyPreferencesPageClass
{
	/**
	 * The parent class
	 */
	GtkBinClass parentClass;
	void*[4] padding;
}

struct HdyPreferencesRow
{
	GtkListBoxRow parentInstance;
}

struct HdyPreferencesRowClass
{
	/**
	 * The parent class
	 */
	GtkListBoxRowClass parentClass;
	void*[4] padding;
}

struct HdyPreferencesWindow
{
	HdyWindow parentInstance;
}

struct HdyPreferencesWindowClass
{
	/**
	 * The parent class
	 */
	HdyWindowClass parentClass;
	void*[4] padding;
}

struct HdySearchBar
{
	GtkBin parentInstance;
}

struct HdySearchBarClass
{
	GtkBinClass parentClass;
	void*[4] padding;
}

struct HdySqueezer;

struct HdySqueezerClass
{
	GtkContainerClass parentClass;
}

struct HdySwipeGroup;

struct HdySwipeGroupClass
{
	GObjectClass parentClass;
}

struct HdySwipeTracker;

struct HdySwipeTrackerClass
{
	GObjectClass parentClass;
}

struct HdySwipeable;

/**
 * An interface for swipeable widgets.
 *
 * Since: 1.0
 */
struct HdySwipeableInterface
{
	/**
	 * The parent interface.
	 */
	GTypeInterface parent;
	/** */
	extern(C) void function(HdySwipeable* self, uint index, long duration) switchChild;
	/**
	 *
	 * Params:
	 *     self = a #HdySwipeable
	 * Returns: the swipe tracker
	 */
	extern(C) HdySwipeTracker* function(HdySwipeable* self) getSwipeTracker;
	/**
	 *
	 * Params:
	 *     self = a #HdySwipeable
	 * Returns: the swipe distance in pixels
	 */
	extern(C) double function(HdySwipeable* self) getDistance;
	/**
	 *
	 * Params:
	 *     self = a #HdySwipeable
	 * Returns: the snap points of
	 *     @self. The array must be freed with g_free().
	 */
	extern(C) double* function(HdySwipeable* self, int* nSnapPoints) getSnapPoints;
	/**
	 *
	 * Params:
	 *     self = a #HdySwipeable
	 * Returns: the current progress, unitless
	 */
	extern(C) double function(HdySwipeable* self) getProgress;
	/**
	 *
	 * Params:
	 *     self = a #HdySwipeable
	 * Returns: the cancel progress, unitless
	 */
	extern(C) double function(HdySwipeable* self) getCancelProgress;
	/** */
	extern(C) void function(HdySwipeable* self, HdyNavigationDirection navigationDirection, int isDrag, GdkRectangle* rect) getSwipeArea;
	void*[4] padding;
}

struct HdyTitleBar;

struct HdyTitleBarClass
{
	GtkBinClass parentClass;
}

struct HdyValueObject;

struct HdyValueObjectClass
{
	GObjectClass parentClass;
}

struct HdyViewSwitcher;

struct HdyViewSwitcherBar;

struct HdyViewSwitcherBarClass
{
	GtkBinClass parentClass;
}

struct HdyViewSwitcherClass
{
	GtkBinClass parentClass;
}

struct HdyViewSwitcherTitle;

struct HdyViewSwitcherTitleClass
{
	GtkBinClass parentClass;
}

struct HdyWindow
{
	GtkWindow parentInstance;
}

struct HdyWindowClass
{
	GtkWindowClass parentClass;
	void*[4] padding;
}

struct HdyWindowHandle;

struct HdyWindowHandleClass
{
	GtkEventBoxClass parentClass;
}

/**
 * The returned #GdkPixbuf is expected to be square with width and height set
 * to @size. The image is cropped to a circle without any scaling or transformation.
 *
 * Params:
 *     size = the required size of the avatar
 *     userData = user data
 *
 * Returns: the #GdkPixbuf to use as a custom avatar
 *     or %NULL to fallback to the generated avatar.
 */
public alias extern(C) GdkPixbuf* function(int size, void* userData) HdyAvatarImageLoadFunc;

/**
 * Called for combo rows that are bound to an enumeration with
 * hdy_combo_row_set_for_enum() for each value from that enumeration.
 *
 * Params:
 *     value = the value from the enum from which to get a name
 *     userData = user data
 *
 * Returns: a newly allocated displayable name that represents @value
 */
public alias extern(C) char* function(HdyEnumValueObject* value, void* userData) HdyComboRowGetEnumValueNameFunc;

/**
 * Called for combo rows that are bound to a #GListModel with
 * hdy_combo_row_bind_name_model() for each item that gets added to the model.
 *
 * Params:
 *     item = the item from the model from which to get a name
 *     userData = user data
 *
 * Returns: a newly allocated displayable name that represents @item
 */
public alias extern(C) char* function(void* item, void* userData) HdyComboRowGetNameFunc;
