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
module handy.CarouselIndicatorDots;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.DrawingArea;
private import gtk.OrientableIF;
private import gtk.OrientableT;
private import gtk.Widget;
private import handy.Carousel;
private import handy.c.functions;
public  import handy.c.types;


/** */
public class CarouselIndicatorDots : DrawingArea, OrientableIF
{
	/** the main Gtk struct */
	protected HdyCarouselIndicatorDots* hdyCarouselIndicatorDots;

	/** Get the main Gtk struct */
	public HdyCarouselIndicatorDots* getCarouselIndicatorDotsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return hdyCarouselIndicatorDots;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)hdyCarouselIndicatorDots;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (HdyCarouselIndicatorDots* hdyCarouselIndicatorDots, bool ownedRef = false)
	{
		this.hdyCarouselIndicatorDots = hdyCarouselIndicatorDots;
		super(cast(GtkDrawingArea*)hdyCarouselIndicatorDots, ownedRef);
	}

	// add the Orientable capabilities
	mixin OrientableT!(HdyCarouselIndicatorDots);


	/** */
	public static GType getType()
	{
		return hdy_carousel_indicator_dots_get_type();
	}

	/**
	 * Create a new #HdyCarouselIndicatorDots widget.
	 *
	 * Returns: The newly created #HdyCarouselIndicatorDots widget
	 *
	 * Since: 1.0
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = hdy_carousel_indicator_dots_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(HdyCarouselIndicatorDots*) __p, true);
	}

	/**
	 * Get the #HdyCarousel the indicator uses.
	 *
	 * See: hdy_carousel_indicator_dots_set_carousel()
	 *
	 * Returns: the #HdyCarousel, or %NULL if none has been set
	 *
	 * Since: 1.0
	 */
	public Carousel getCarousel()
	{
		auto __p = hdy_carousel_indicator_dots_get_carousel(hdyCarouselIndicatorDots);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Carousel)(cast(HdyCarousel*) __p);
	}

	/**
	 * Sets the #HdyCarousel to use.
	 *
	 * Params:
	 *     carousel = a #HdyCarousel
	 *
	 * Since: 1.0
	 */
	public void setCarousel(Carousel carousel)
	{
		hdy_carousel_indicator_dots_set_carousel(hdyCarouselIndicatorDots, (carousel is null) ? null : carousel.getCarouselStruct());
	}
}
