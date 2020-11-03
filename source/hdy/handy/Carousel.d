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
module handy.Carousel;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.EventBox;
private import gtk.OrientableIF;
private import gtk.OrientableT;
private import gtk.Widget;
private import handy.SwipeableIF;
private import handy.SwipeableT;
private import handy.c.functions;
public  import handy.c.types;
private import std.algorithm;


/** */
public class Carousel : EventBox, OrientableIF, SwipeableIF
{
	/** the main Gtk struct */
	protected HdyCarousel* hdyCarousel;

	/** Get the main Gtk struct */
	public HdyCarousel* getCarouselStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return hdyCarousel;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)hdyCarousel;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (HdyCarousel* hdyCarousel, bool ownedRef = false)
	{
		this.hdyCarousel = hdyCarousel;
		super(cast(GtkEventBox*)hdyCarousel, ownedRef);
	}

	// add the Orientable capabilities
	mixin OrientableT!(HdyCarousel);

	// add the Swipeable capabilities
	mixin SwipeableT!(HdyCarousel);


	/** */
	public static GType getType()
	{
		return hdy_carousel_get_type();
	}

	/**
	 * Create a new #HdyCarousel widget.
	 *
	 * Returns: The newly created #HdyCarousel widget
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = hdy_carousel_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(HdyCarousel*) __p);
	}

	/**
	 * Sets whether @self can be dragged with mouse pointer
	 *
	 * Returns: %TRUE if @self can be dragged with mouse
	 *
	 * Since: 1.0
	 */
	public bool getAllowMouseDrag()
	{
		return hdy_carousel_get_allow_mouse_drag(hdyCarousel) != 0;
	}

	/**
	 * Gets animation duration used by hdy_carousel_scroll_to().
	 *
	 * Returns: Animation duration in milliseconds
	 *
	 * Since: 1.0
	 */
	public uint getAnimationDuration()
	{
		return hdy_carousel_get_animation_duration(hdyCarousel);
	}

	/**
	 * Gets whether @self can be navigated.
	 *
	 * Returns: %TRUE if @self can be swiped
	 *
	 * Since: 1.0
	 */
	public bool getInteractive()
	{
		return hdy_carousel_get_interactive(hdyCarousel) != 0;
	}

	/**
	 * Gets the number of pages in @self.
	 *
	 * Returns: The number of pages in @self
	 *
	 * Since: 1.0
	 */
	public uint getNPages()
	{
		return hdy_carousel_get_n_pages(hdyCarousel);
	}

	/**
	 * Gets current scroll position in @self. It's unitless, 1 matches 1 page.
	 *
	 * Returns: The scroll position
	 *
	 * Since: 1.0
	 */
	public double getPosition()
	{
		return hdy_carousel_get_position(hdyCarousel);
	}

	/**
	 * Gets duration of the animation used when adding or removing pages in
	 * milliseconds.
	 *
	 * Returns: Page reveal duration
	 *
	 * Since: 1.0
	 */
	public uint getRevealDuration()
	{
		return hdy_carousel_get_reveal_duration(hdyCarousel);
	}

	/**
	 * Gets spacing between pages in pixels.
	 *
	 * Returns: Spacing between pages
	 *
	 * Since: 1.0
	 */
	public uint getSpacing()
	{
		return hdy_carousel_get_spacing(hdyCarousel);
	}

	/**
	 * Inserts @child into @self at position @position.
	 *
	 * If position is -1, or larger than the number of pages,
	 * @child will be appended to the end.
	 *
	 * Params:
	 *     child = a widget to add
	 *     position = the position to insert @child in.
	 *
	 * Since: 1.0
	 */
	public void insert(Widget child, int position)
	{
		hdy_carousel_insert(hdyCarousel, (child is null) ? null : child.getWidgetStruct(), position);
	}

	/**
	 * Prepends @child to @self
	 *
	 * Params:
	 *     child = a widget to add
	 *
	 * Since: 1.0
	 */
	public void prepend(Widget child)
	{
		hdy_carousel_prepend(hdyCarousel, (child is null) ? null : child.getWidgetStruct());
	}

	/**
	 * Moves @child into position @position.
	 *
	 * If position is -1, or larger than the number of pages, @child will be moved
	 * to the end.
	 *
	 * Params:
	 *     child = a widget to add
	 *     position = the position to move @child to.
	 *
	 * Since: 1.0
	 */
	public void reorder(Widget child, int position)
	{
		hdy_carousel_reorder(hdyCarousel, (child is null) ? null : child.getWidgetStruct(), position);
	}

	/**
	 * Scrolls to @widget position with an animation.
	 * #HdyCarousel:animation-duration property can be used for controlling the
	 * duration.
	 *
	 * Params:
	 *     widget = a child of @self
	 *
	 * Since: 1.0
	 */
	public void scrollTo(Widget widget)
	{
		hdy_carousel_scroll_to(hdyCarousel, (widget is null) ? null : widget.getWidgetStruct());
	}

	/**
	 * Scrolls to @widget position with an animation.
	 *
	 * Params:
	 *     widget = a child of @self
	 *     duration = animation duration in milliseconds
	 *
	 * Since: 1.0
	 */
	public void scrollToFull(Widget widget, long duration)
	{
		hdy_carousel_scroll_to_full(hdyCarousel, (widget is null) ? null : widget.getWidgetStruct(), duration);
	}

	/**
	 * Sets whether @self can be dragged with mouse pointer. If @allow_mouse_drag
	 * is %FALSE, dragging is only available on touch.
	 *
	 * Params:
	 *     allowMouseDrag = whether @self can be dragged with mouse pointer
	 *
	 * Since: 1.0
	 */
	public void setAllowMouseDrag(bool allowMouseDrag)
	{
		hdy_carousel_set_allow_mouse_drag(hdyCarousel, allowMouseDrag);
	}

	/**
	 * Sets animation duration used by hdy_carousel_scroll_to().
	 *
	 * Params:
	 *     duration = animation duration in milliseconds
	 *
	 * Since: 1.0
	 */
	public void setAnimationDuration(uint duration)
	{
		hdy_carousel_set_animation_duration(hdyCarousel, duration);
	}

	/**
	 * Sets whether @self can be navigated. This can be used to temporarily disable
	 * a #HdyCarousel to only allow swiping in a certain state.
	 *
	 * Params:
	 *     interactive = whether @self can be swiped.
	 *
	 * Since: 1.0
	 */
	public void setInteractive(bool interactive)
	{
		hdy_carousel_set_interactive(hdyCarousel, interactive);
	}

	/**
	 * Sets duration of the animation used when adding or removing pages in
	 * milliseconds.
	 *
	 * Params:
	 *     revealDuration = the new reveal duration value
	 *
	 * Since: 1.0
	 */
	public void setRevealDuration(uint revealDuration)
	{
		hdy_carousel_set_reveal_duration(hdyCarousel, revealDuration);
	}

	/**
	 * Sets spacing between pages in pixels.
	 *
	 * Params:
	 *     spacing = the new spacing value
	 *
	 * Since: 1.0
	 */
	public void setSpacing(uint spacing)
	{
		hdy_carousel_set_spacing(hdyCarousel, spacing);
	}

	/**
	 * This signal is emitted after a page has been changed. This can be used to
	 * implement "infinite scrolling" by connecting to this signal and amending
	 * the pages.
	 *
	 * Params:
	 *     index = Current page
	 *
	 * Since: 1.0
	 */
	gulong addOnPageChanged(void delegate(uint, Carousel) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "page-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
