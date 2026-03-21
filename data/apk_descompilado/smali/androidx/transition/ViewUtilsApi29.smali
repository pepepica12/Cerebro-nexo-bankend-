.class public Landroidx/transition/ViewUtilsApi29;
.super Landroidx/transition/ViewUtilsApi23;
.source "ViewUtilsApi29.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroidx/transition/ViewUtilsApi23;-><init>()V

    return-void
.end method


# virtual methods
.method public getTransitionAlpha(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 36
    invoke-static {p1}, Landroidx/transition/ViewUtilsApi19$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public setLeftTopRightBottom(Landroid/view/View;IIII)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 46
    invoke-static {p1, p2, p3, p4, p5}, Landroidx/transition/ViewUtilsApi22$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;IIII)V

    .line 47
    return-void
.end method

.method public setTransitionAlpha(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "alpha"    # F

    .line 31
    invoke-static {p1, p2}, Landroidx/transition/ViewUtilsApi19$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;F)V

    .line 32
    return-void
.end method

.method public setTransitionVisibility(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 41
    invoke-static {p1, p2}, Landroidx/transition/ViewUtilsApi23$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;I)V

    .line 42
    return-void
.end method

.method public transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .line 51
    invoke-static {p1, p2}, Landroidx/transition/ViewUtilsApi21$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 52
    return-void
.end method

.method public transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .line 56
    invoke-static {p1, p2}, Landroidx/transition/ViewUtilsApi21$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 57
    return-void
.end method
