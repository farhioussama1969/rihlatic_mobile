import 'package:flutter/material.dart';

import 'package:rihlatic/app/core/components/packages/input-quantity-master/lib/src/constant.dart';

class QtyDecorationProps {
  /// border shape of button'
  /// - none,
  /// - circle,
  /// - square'
  final BorderShapeBtn borderShape;

  // An Widget to show before the input field and outside of the decoration's
  /// container.
  final Widget? leadingWidget;

  /// The color of the [icon].
  /// if the [InputQty] is focused or not.
  final Color? iconColor;

  /// Defines minimum and maximum sizes for the [InputDecorator].
  final BoxConstraints? constraints;

  /// Icon widget for button plus
  final Widget? plusBtn;

  /// BoxConstraing for plus button widget
  final BoxConstraints? plusButtonConstrains;

  /// Icon widget for button minus
  final Widget? minusBtn;

  /// BoxConstraing for minus button widget
  final BoxConstraints? minusButtonConstrains;

  /// primary color applied on Button widget
  /// if `minusBtn` or `plusBtn` specified
  /// this color will ignored
  final Color btnColor;

  /// define style widget
  final QtyStyle qtyStyle;

  /// set orientation of the button
  final ButtonOrientation? orientation;

  /// The shape of the border to draw around the decoration's container.
  ///
  ///  * [InputBorder.none], which doesn't draw a border.
  ///  * [UnderlineInputBorder], which draws a horizontal line at the
  ///    bottom of the input decorator's container.
  ///  * [OutlineInputBorder], an [InputDecorator] border which draws a
  ///    rounded rectangle around the input decorator's container.
  final InputBorder? border;

  /// The border to display when the [InputDecorator] has the focus and is not
  /// showing an error.
  ///
  /// - If `focusedBorder` is not provided but `border` is set, the `border` style will be used.
  /// - If both `focusedBorder` and `border` are null, a default `OutlineInputBorder` will be applied.
  final InputBorder? focusedBorder;

  /// The border to display when the [InputDecorator] does not have the focus and
  /// is showing an error.
  ///
  /// - If `enabledBorder` is not provided but `border` is set, the `border` style will be used.
  /// - If both `enabledBorder` and `border` are null, a default `OutlineInputBorder` will be applied.
  final InputBorder? enabledBorder;

  /// The border to display when the [InputDecorator] is disabled and is not
  /// showing an error.
  ///
  /// - If `disabledBorder` is not provided but `border` is set, the `border` style will be used.
  /// - If both `disabledBorder` and `border` are null, a default `OutlineInputBorder` will be applied.
  final InputBorder? disabledBorder;

  /// The border to display when the [InputDecorator] has the focus and is
  /// showing an error.
  final InputBorder? focusedErrorBorder;

  /// The border to display when the [InputDecorator] does not have the focus and
  /// is showing an error.
  final InputBorder? errorBorder;

  /// The color of the highlight for the decoration shown if the container
  /// is being hovered over by a mouse.
  // final Color? hoverColor;

  /// If true the decoration's container is filled with [fillColor].
  /// This property is false by default.
  final Color? fillColor;

  /// Whether the decoration is the same size as the input field.
  /// Defaults to true
  final bool isCollapsed;

  /// The padding for the input decoration's container.
  final EdgeInsetsGeometry? contentPadding;

  /// Defaults to false.
  final bool? isDense;

  /// set border for InputQuantity widget
  ///
  /// default is true
  /// border decoration will be override if `InputBorder` are defined
  final bool isBordered;

  /// use for width of InputQty widget based on number of character
  /// default is `6`
  /// it will generate 6 character _ as hint text
  final int width;

  const QtyDecorationProps({
    this.leadingWidget,
    this.minusBtn,
    this.borderShape = BorderShapeBtn.none,
    this.minusButtonConstrains = const BoxConstraints(),
    this.plusBtn,
    this.plusButtonConstrains = const BoxConstraints(),
    this.qtyStyle = QtyStyle.classic,
    this.constraints,
    this.iconColor,
    this.orientation,
    this.isBordered = true,
    this.border,
    this.enabledBorder,
    this.focusedBorder,
    this.disabledBorder,
    this.focusedErrorBorder,
    this.errorBorder,
    this.width = 10,
    this.contentPadding,
    this.fillColor,
    this.isCollapsed = true,
    this.isDense,
    this.btnColor = Colors.green,
  });
}
