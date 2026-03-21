.class public abstract Landroidx/appcompat/widget/LinearLayoutCompat;
.super Landroid/view/ViewGroup;
.source "LinearLayoutCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    }
.end annotation


# instance fields
.field public mBaselineAligned:Z

.field public mBaselineAlignedChildIndex:I

.field public mBaselineChildTop:I

.field public mDivider:Landroid/graphics/drawable/Drawable;

.field public mDividerHeight:I

.field public mDividerPadding:I

.field public mDividerWidth:I

.field public mGravity:I

.field public mMaxAscent:[I

.field public mMaxDescent:[I

.field public mOrientation:I

.field public mShowDividers:I

.field public mTotalLength:I

.field public mUseLargestChild:Z

.field public mWeightSum:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 157
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 109
    const/4 v1, -0x1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 116
    const/4 v2, 0x0

    iput v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineChildTop:I

    .line 120
    const v3, 0x800033

    iput v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 159
    sget-object v3, Landroidx/appcompat/R$styleable;->LinearLayoutCompat:[I

    invoke-static {p1, p2, v3, p3, v2}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v3

    .line 162
    .local v3, "a":Landroidx/appcompat/widget/TintTypedArray;
    sget v4, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_orientation:I

    invoke-virtual {v3, v4, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v4

    .line 163
    .local v4, "index":I
    if-ltz v4, :cond_0

    .line 164
    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->setOrientation(I)V

    .line 167
    :cond_0
    sget v5, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_gravity:I

    invoke-virtual {v3, v5, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v4

    .line 168
    if-ltz v4, :cond_1

    .line 169
    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->setGravity(I)V

    .line 172
    :cond_1
    sget v5, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAligned:I

    invoke-virtual {v3, v5, v0}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 173
    .local v0, "baselineAligned":Z
    if-nez v0, :cond_2

    .line 174
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->setBaselineAligned(Z)V

    .line 177
    :cond_2
    sget v5, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_weightSum:I

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v3, v5, v6}, Landroidx/appcompat/widget/TintTypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    .line 179
    sget v5, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAlignedChildIndex:I

    .line 180
    invoke-virtual {v3, v5, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 182
    sget v1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_measureWithLargestChild:I

    invoke-virtual {v3, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 184
    sget v1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_divider:I

    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    sget v1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_showDividers:I

    invoke-virtual {v3, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    .line 186
    sget v1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_dividerPadding:I

    invoke-virtual {v3, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    .line 188
    invoke-virtual {v3}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 189
    return-void
.end method

.method private forceUniformWidth(II)V
    .locals 9
    .param p1, "count"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 899
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 901
    .local v4, "uniformMeasureSpec":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_2

    .line 902
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 903
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 904
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 906
    .local v1, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_0

    .line 909
    iget v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 910
    .local v8, "oldHeight":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 913
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v6, p2

    .end local p2    # "heightMeasureSpec":I
    .local v6, "heightMeasureSpec":I
    invoke-virtual/range {v2 .. v7}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 914
    iput v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_1

    .line 906
    .end local v6    # "heightMeasureSpec":I
    .end local v8    # "oldHeight":I
    .restart local p2    # "heightMeasureSpec":I
    :cond_0
    move v6, p2

    .end local p2    # "heightMeasureSpec":I
    .restart local v6    # "heightMeasureSpec":I
    goto :goto_1

    .line 903
    .end local v1    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v6    # "heightMeasureSpec":I
    .restart local p2    # "heightMeasureSpec":I
    :cond_1
    move v6, p2

    .line 901
    .end local v3    # "child":Landroid/view/View;
    .end local p2    # "heightMeasureSpec":I
    .restart local v6    # "heightMeasureSpec":I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move p2, v6

    goto :goto_0

    .end local v6    # "heightMeasureSpec":I
    .restart local p2    # "heightMeasureSpec":I
    :cond_2
    nop

    .line 918
    .end local v0    # "i":I
    return-void
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 1649
    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1650
    return-void
.end method


# virtual methods
.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1755
    instance-of v0, p1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    return v0
.end method

.method public drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 326
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v0

    .line 327
    .local v0, "count":I
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    .line 328
    .local v1, "isLayoutRtl":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 329
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 331
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 332
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 333
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 335
    .local v4, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    if-eqz v1, :cond_0

    .line 336
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    .local v5, "position":I
    goto :goto_1

    .line 338
    .end local v5    # "position":I
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int/2addr v5, v6

    .line 340
    .restart local v5    # "position":I
    :goto_1
    invoke-virtual {p0, p1, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 328
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v5    # "position":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 345
    .end local v2    # "i":I
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 346
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 348
    .local v2, "child":Landroid/view/View;
    if-nez v2, :cond_4

    .line 349
    if-eqz v1, :cond_3

    .line 350
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    .local v3, "position":I
    goto :goto_2

    .line 352
    .end local v3    # "position":I
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int/2addr v3, v4

    .restart local v3    # "position":I
    goto :goto_2

    .line 355
    .end local v3    # "position":I
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 356
    .local v3, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    if-eqz v1, :cond_5

    .line 357
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int/2addr v4, v5

    move v3, v4

    .local v4, "position":I
    goto :goto_2

    .line 359
    .end local v4    # "position":I
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    move v3, v4

    .line 362
    .local v3, "position":I
    :goto_2
    invoke-virtual {p0, p1, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 364
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "position":I
    :cond_6
    return-void
.end method

.method public drawDividersVertical(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 299
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v0

    .line 300
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 301
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 303
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 304
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 305
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 306
    .local v3, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    sub-int/2addr v4, v5

    .line 307
    .local v4, "top":I
    invoke-virtual {p0, p1, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 300
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v4    # "top":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 312
    .end local v1    # "i":I
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 313
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 314
    .local v1, "child":Landroid/view/View;
    const/4 v2, 0x0

    .line 315
    .local v2, "bottom":I
    if-nez v1, :cond_2

    .line 316
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    sub-int/2addr v3, v4

    .end local v2    # "bottom":I
    .local v3, "bottom":I
    goto :goto_1

    .line 318
    .end local v3    # "bottom":I
    .restart local v2    # "bottom":I
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 319
    .local v3, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v2, v4, v5

    move v3, v2

    .line 321
    .end local v2    # "bottom":I
    .local v3, "bottom":I
    :goto_1
    invoke-virtual {p0, p1, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 323
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "bottom":I
    :cond_3
    return-void
.end method

.method public drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "top"    # I

    .line 367
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    add-int/2addr v1, v2

    .line 368
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v3, p2

    .line 367
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 369
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 370
    return-void
.end method

.method public drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I

    .line 373
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v2, p2

    .line 374
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    sub-int/2addr v3, v4

    .line 373
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 375
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 376
    return-void
.end method

.method public final forceUniformHeight(II)V
    .locals 9
    .param p1, "count"    # I
    .param p2, "widthMeasureSpec"    # I

    .line 1321
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1323
    .local v6, "uniformMeasureSpec":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_2

    .line 1324
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1325
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 1326
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1328
    .local v1, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 1331
    iget v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1332
    .local v8, "oldWidth":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1335
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p2

    .end local p2    # "widthMeasureSpec":I
    .local v4, "widthMeasureSpec":I
    invoke-virtual/range {v2 .. v7}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1336
    iput v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_1

    .line 1328
    .end local v4    # "widthMeasureSpec":I
    .end local v8    # "oldWidth":I
    .restart local p2    # "widthMeasureSpec":I
    :cond_0
    move v4, p2

    .end local p2    # "widthMeasureSpec":I
    .restart local v4    # "widthMeasureSpec":I
    goto :goto_1

    .line 1325
    .end local v1    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v4    # "widthMeasureSpec":I
    .restart local p2    # "widthMeasureSpec":I
    :cond_1
    move v4, p2

    .line 1323
    .end local v3    # "child":Landroid/view/View;
    .end local p2    # "widthMeasureSpec":I
    .restart local v4    # "widthMeasureSpec":I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move p2, v4

    goto :goto_0

    .end local v4    # "widthMeasureSpec":I
    .restart local p2    # "widthMeasureSpec":I
    :cond_2
    nop

    .line 1340
    .end local v0    # "i":I
    return-void
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 57
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->generateDefaultLayoutParams()Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateDefaultLayoutParams()Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 3

    .line 1738
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, -0x2

    if-nez v0, :cond_0

    .line 1739
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    return-object v0

    .line 1740
    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1741
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    return-object v0

    .line 1743
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 1725
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1748
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBaseline()I
    .locals 6

    .line 427
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-gez v0, :cond_0

    .line 428
    invoke-super {p0}, Landroid/view/View;->getBaseline()I

    move-result v0

    return v0

    .line 431
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-le v0, v1, :cond_4

    .line 436
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 437
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 439
    .local v1, "childBaseline":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 440
    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-nez v3, :cond_1

    .line 442
    return v2

    .line 446
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 456
    :cond_2
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineChildTop:I

    .line 458
    .local v2, "childTop":I
    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 459
    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v3, v3, 0x70

    .line 460
    .local v3, "majorGravity":I
    const/16 v4, 0x30

    if-eq v3, v4, :cond_3

    .line 461
    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 463
    :sswitch_0
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int v2, v4, v5

    .line 464
    goto :goto_0

    .line 467
    :sswitch_1
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    .line 474
    .end local v3    # "majorGravity":I
    :cond_3
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 475
    .local v3, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v2

    add-int/2addr v4, v1

    return v4

    .line 432
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childBaseline":I
    .end local v2    # "childTop":I
    .end local v3    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public getBaselineAlignedChildIndex()I
    .locals 1

    .line 484
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    return v0
.end method

.method public getChildrenSkipCount(Landroid/view/View;I)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 1351
    const/4 v0, 0x0

    return v0
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 225
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerPadding()I
    .locals 1

    .line 272
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    return v0
.end method

.method public getDividerWidth()I
    .locals 1

    .line 282
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    .line 1704
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    return v0
.end method

.method public getLocationOffset(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 1393
    const/4 v0, 0x0

    return v0
.end method

.method public getNextLocationOffset(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 1405
    const/4 v0, 0x0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 1671
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    return v0
.end method

.method public getShowDividers()I
    .locals 1

    .line 216
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    return v0
.end method

.method public getVirtualChildAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .line 509
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getVirtualChildCount()I
    .locals 1

    .line 522
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getWeightSum()F
    .locals 1

    .line 533
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    return v0
.end method

.method public hasDividerBeforeChildAt(I)Z
    .locals 4
    .param p1, "childIndex"    # I

    .line 570
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 571
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    return v0

    .line 572
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ne p1, v2, :cond_3

    .line 573
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    move v0, v1

    :cond_2
    return v0

    .line 574
    :cond_3
    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_6

    .line 575
    const/4 v0, 0x0

    .line 576
    .local v0, "hasVisibleViewBefore":Z
    add-int/lit8 v1, p1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_5

    .line 577
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_4

    .line 578
    const/4 v0, 0x1

    .line 579
    goto :goto_1

    .line 576
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 582
    .end local v1    # "i":I
    :cond_5
    :goto_1
    return v0

    .line 584
    .end local v0    # "hasVisibleViewBefore":Z
    :cond_6
    return v0
.end method

.method public layoutHorizontal(IIII)V
    .locals 30
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1525
    move-object/from16 v0, p0

    invoke-static {v0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v6

    .line 1526
    .local v6, "isLayoutRtl":Z
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    .line 1532
    .local v7, "paddingTop":I
    sub-int v8, p4, p2

    .line 1533
    .local v8, "height":I
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int v9, v8, v1

    .line 1536
    .local v9, "childBottom":I
    sub-int v1, v8, v7

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int v10, v1, v2

    .line 1538
    .local v10, "childSpace":I
    invoke-virtual {v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v11

    .line 1540
    .local v11, "count":I
    iget v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    const v2, 0x800007

    and-int v12, v1, v2

    .line 1541
    .local v12, "majorGravity":I
    iget v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v13, v1, 0x70

    .line 1543
    .local v13, "minorGravity":I
    iget-boolean v14, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 1545
    .local v14, "baselineAligned":Z
    iget-object v15, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 1546
    .local v15, "maxAscent":[I
    iget-object v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    .line 1548
    .local v1, "maxDescent":[I
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    .line 1549
    .local v2, "layoutDirection":I
    invoke-static {v12, v2}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v3

    const/16 v16, 0x2

    sparse-switch v3, :sswitch_data_0

    .line 1562
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    .local v3, "childLeft":I
    goto :goto_0

    .line 1552
    .end local v3    # "childLeft":I
    :sswitch_0
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    add-int v3, v3, p3

    sub-int v3, v3, p1

    iget v4, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v3, v4

    .line 1553
    .restart local v3    # "childLeft":I
    goto :goto_0

    .line 1557
    .end local v3    # "childLeft":I
    :sswitch_1
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int v4, p3, p1

    iget v5, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 1558
    .restart local v3    # "childLeft":I
    nop

    .line 1566
    :goto_0
    const/4 v4, 0x0

    .line 1567
    .local v4, "start":I
    const/4 v5, 0x1

    .line 1569
    .local v5, "dir":I
    if-eqz v6, :cond_0

    .line 1570
    add-int/lit8 v4, v11, -0x1

    .line 1571
    const/4 v5, -0x1

    move/from16 v17, v4

    move/from16 v18, v5

    goto :goto_1

    .line 1569
    :cond_0
    move/from16 v17, v4

    move/from16 v18, v5

    .line 1574
    .end local v4    # "start":I
    .end local v5    # "dir":I
    .local v17, "start":I
    .local v18, "dir":I
    :goto_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v11, :cond_9

    .line 1575
    mul-int v5, v18, v4

    add-int v5, v17, v5

    .line 1576
    .local v5, "childIndex":I
    move-object/from16 v19, v1

    .end local v1    # "maxDescent":[I
    .local v19, "maxDescent":[I
    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1578
    .local v1, "child":Landroid/view/View;
    const/16 v20, 0x1

    if-nez v1, :cond_1

    .line 1579
    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v21

    add-int v3, v3, v21

    move/from16 v21, v2

    move/from16 v25, v6

    move/from16 v23, v7

    goto/16 :goto_7

    .line 1580
    :cond_1
    move/from16 v21, v2

    .end local v2    # "layoutDirection":I
    .local v21, "layoutDirection":I
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    move/from16 v22, v3

    .end local v3    # "childLeft":I
    .local v22, "childLeft":I
    const/16 v3, 0x8

    if-eq v2, v3, :cond_8

    .line 1581
    move v2, v4

    .end local v4    # "i":I
    .local v2, "i":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 1582
    .local v4, "childWidth":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 1583
    .local v3, "childHeight":I
    const/16 v23, -0x1

    .line 1585
    .local v23, "childBaseline":I
    nop

    .line 1586
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    move/from16 v25, v6

    .end local v6    # "isLayoutRtl":Z
    .local v25, "isLayoutRtl":Z
    move-object/from16 v6, v24

    check-cast v6, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1588
    .local v6, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    move/from16 v24, v2

    .end local v2    # "i":I
    .local v24, "i":I
    const/4 v2, -0x1

    if-eqz v14, :cond_2

    move/from16 v26, v3

    .end local v3    # "childHeight":I
    .local v26, "childHeight":I
    iget v3, v6, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-eq v3, v2, :cond_3

    .line 1589
    invoke-virtual {v1}, Landroid/view/View;->getBaseline()I

    move-result v23

    move/from16 v3, v23

    goto :goto_3

    .line 1588
    .end local v26    # "childHeight":I
    .restart local v3    # "childHeight":I
    :cond_2
    move/from16 v26, v3

    .line 1592
    .end local v3    # "childHeight":I
    .restart local v26    # "childHeight":I
    :cond_3
    move/from16 v3, v23

    .end local v23    # "childBaseline":I
    .local v3, "childBaseline":I
    :goto_3
    iget v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1593
    .local v2, "gravity":I
    if-gez v2, :cond_4

    .line 1594
    move v2, v13

    move/from16 v27, v2

    goto :goto_4

    .line 1593
    :cond_4
    move/from16 v27, v2

    .line 1597
    .end local v2    # "gravity":I
    .local v27, "gravity":I
    :goto_4
    and-int/lit8 v2, v27, 0x70

    sparse-switch v2, :sswitch_data_1

    .line 1629
    move v2, v7

    .local v2, "childTop":I
    goto :goto_5

    .line 1622
    .end local v2    # "childTop":I
    :sswitch_2
    sub-int v2, v9, v26

    move/from16 v28, v2

    iget v2, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v2, v28, v2

    .line 1623
    .restart local v2    # "childTop":I
    move/from16 v28, v2

    const/4 v2, -0x1

    .end local v2    # "childTop":I
    .local v28, "childTop":I
    if-eq v3, v2, :cond_5

    .line 1624
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v2, v3

    .line 1625
    .local v2, "descent":I
    aget v23, v19, v16

    sub-int v23, v23, v2

    sub-int v2, v28, v23

    .line 1626
    .end local v28    # "childTop":I
    .local v2, "childTop":I
    goto :goto_5

    .line 1623
    .end local v2    # "childTop":I
    .restart local v28    # "childTop":I
    :cond_5
    move/from16 v2, v28

    goto :goto_5

    .line 1599
    .end local v28    # "childTop":I
    :sswitch_3
    iget v2, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v7

    .line 1600
    .restart local v2    # "childTop":I
    move/from16 v28, v2

    const/4 v2, -0x1

    .end local v2    # "childTop":I
    .restart local v28    # "childTop":I
    if-eq v3, v2, :cond_6

    .line 1601
    aget v2, v15, v20

    sub-int/2addr v2, v3

    add-int v2, v28, v2

    .end local v28    # "childTop":I
    .restart local v2    # "childTop":I
    goto :goto_5

    .line 1600
    .end local v2    # "childTop":I
    .restart local v28    # "childTop":I
    :cond_6
    move/from16 v2, v28

    goto :goto_5

    .line 1617
    .end local v28    # "childTop":I
    :sswitch_4
    sub-int v2, v10, v26

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v7

    move/from16 v23, v2

    iget v2, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v2, v23, v2

    move/from16 v23, v2

    iget v2, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v2, v23, v2

    .line 1619
    .restart local v2    # "childTop":I
    nop

    .line 1633
    :goto_5
    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 1634
    move/from16 v23, v2

    .end local v2    # "childTop":I
    .local v23, "childTop":I
    iget v2, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int v2, v22, v2

    .end local v22    # "childLeft":I
    .local v2, "childLeft":I
    goto :goto_6

    .line 1633
    .end local v23    # "childTop":I
    .local v2, "childTop":I
    .restart local v22    # "childLeft":I
    :cond_7
    move/from16 v23, v2

    .end local v2    # "childTop":I
    .restart local v23    # "childTop":I
    move/from16 v2, v22

    .line 1637
    .end local v22    # "childLeft":I
    .local v2, "childLeft":I
    :goto_6
    move/from16 v22, v2

    .end local v2    # "childLeft":I
    .restart local v22    # "childLeft":I
    iget v2, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int v22, v22, v2

    .line 1638
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getLocationOffset(Landroid/view/View;)I

    move-result v2

    add-int v2, v22, v2

    move/from16 v29, v26

    move/from16 v26, v3

    move/from16 v3, v23

    move/from16 v23, v7

    move v7, v5

    move/from16 v5, v29

    .local v3, "childTop":I
    .local v5, "childHeight":I
    .local v7, "childIndex":I
    .local v23, "paddingTop":I
    .local v26, "childBaseline":I
    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->setChildFrame(Landroid/view/View;IIII)V

    .line 1640
    iget v2, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    .line 1641
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v28

    add-int v2, v2, v28

    add-int v22, v22, v2

    .line 1643
    invoke-virtual {v0, v1, v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v2

    add-int v2, v24, v2

    move v4, v2

    move/from16 v3, v22

    .end local v24    # "i":I
    .local v2, "i":I
    goto :goto_7

    .line 1580
    .end local v2    # "i":I
    .end local v3    # "childTop":I
    .end local v23    # "paddingTop":I
    .end local v25    # "isLayoutRtl":Z
    .end local v26    # "childBaseline":I
    .end local v27    # "gravity":I
    .local v4, "i":I
    .local v5, "childIndex":I
    .local v6, "isLayoutRtl":Z
    .local v7, "paddingTop":I
    :cond_8
    move/from16 v24, v4

    move/from16 v25, v6

    move/from16 v23, v7

    move v7, v5

    .end local v4    # "i":I
    .end local v5    # "childIndex":I
    .end local v6    # "isLayoutRtl":Z
    .local v7, "childIndex":I
    .restart local v23    # "paddingTop":I
    .restart local v24    # "i":I
    .restart local v25    # "isLayoutRtl":Z
    move/from16 v3, v22

    .line 1574
    .end local v1    # "child":Landroid/view/View;
    .end local v7    # "childIndex":I
    .end local v22    # "childLeft":I
    .end local v24    # "i":I
    .local v3, "childLeft":I
    .restart local v4    # "i":I
    :goto_7
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, v19

    move/from16 v2, v21

    move/from16 v7, v23

    move/from16 v6, v25

    goto/16 :goto_2

    .end local v19    # "maxDescent":[I
    .end local v21    # "layoutDirection":I
    .end local v23    # "paddingTop":I
    .end local v25    # "isLayoutRtl":Z
    .local v1, "maxDescent":[I
    .local v2, "layoutDirection":I
    .restart local v6    # "isLayoutRtl":Z
    .local v7, "paddingTop":I
    :cond_9
    nop

    .line 1646
    .end local v4    # "i":I
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_4
        0x30 -> :sswitch_3
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method public layoutVertical(IIII)V
    .locals 21
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1430
    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    .line 1436
    .local v6, "paddingLeft":I
    sub-int v7, p3, p1

    .line 1437
    .local v7, "width":I
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int v8, v7, v1

    .line 1440
    .local v8, "childRight":I
    sub-int v1, v7, v6

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int v9, v1, v2

    .line 1442
    .local v9, "childSpace":I
    invoke-virtual {v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v10

    .line 1444
    .local v10, "count":I
    iget v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v11, v1, 0x70

    .line 1445
    .local v11, "majorGravity":I
    iget v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    const v2, 0x800007

    and-int v12, v1, v2

    .line 1447
    .local v12, "minorGravity":I
    sparse-switch v11, :sswitch_data_0

    .line 1460
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .local v1, "childTop":I
    goto :goto_0

    .line 1450
    .end local v1    # "childTop":I
    :sswitch_0
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int v1, v1, p4

    sub-int v1, v1, p2

    iget v2, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v1, v2

    .line 1451
    .restart local v1    # "childTop":I
    goto :goto_0

    .line 1455
    .end local v1    # "childTop":I
    :sswitch_1
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int v2, p4, p2

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 1456
    .restart local v1    # "childTop":I
    nop

    .line 1464
    :goto_0
    const/4 v2, 0x0

    move v13, v2

    .local v13, "i":I
    :goto_1
    if-ge v13, v10, :cond_4

    .line 1465
    move v2, v1

    .end local v1    # "childTop":I
    .local v2, "childTop":I
    invoke-virtual {v0, v13}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1466
    .local v1, "child":Landroid/view/View;
    if-nez v1, :cond_0

    .line 1467
    invoke-virtual {v0, v13}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    goto/16 :goto_5

    .line 1468
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_3

    .line 1469
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 1470
    .local v4, "childWidth":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 1472
    .local v5, "childHeight":I
    nop

    .line 1473
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1475
    .local v14, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v3, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1476
    .local v3, "gravity":I
    if-gez v3, :cond_1

    .line 1477
    move v3, v12

    move v15, v3

    goto :goto_2

    .line 1476
    :cond_1
    move v15, v3

    .line 1479
    .end local v3    # "gravity":I
    .local v15, "gravity":I
    :goto_2
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    .line 1480
    .local v3, "layoutDirection":I
    invoke-static {v15, v3}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v16

    .line 1482
    .local v16, "absoluteGravity":I
    and-int/lit8 v17, v16, 0x7

    sparse-switch v17, :sswitch_data_1

    .line 1494
    move/from16 v17, v2

    .end local v2    # "childTop":I
    .local v17, "childTop":I
    iget v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v6

    .local v2, "childLeft":I
    goto :goto_3

    .line 1489
    .end local v17    # "childTop":I
    .local v2, "childTop":I
    :sswitch_2
    move/from16 v17, v2

    .end local v2    # "childTop":I
    .restart local v17    # "childTop":I
    sub-int v2, v8, v4

    move/from16 v18, v2

    iget v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int v2, v18, v2

    .line 1490
    .local v2, "childLeft":I
    goto :goto_3

    .line 1484
    .end local v17    # "childTop":I
    .local v2, "childTop":I
    :sswitch_3
    move/from16 v17, v2

    .end local v2    # "childTop":I
    .restart local v17    # "childTop":I
    sub-int v2, v9, v4

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v6

    move/from16 v18, v2

    iget v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int v2, v18, v2

    move/from16 v18, v2

    iget v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int v2, v18, v2

    .line 1486
    .local v2, "childLeft":I
    nop

    .line 1498
    :goto_3
    invoke-virtual {v0, v13}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1499
    move/from16 v18, v2

    .end local v2    # "childLeft":I
    .local v18, "childLeft":I
    iget v2, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int v2, v17, v2

    move/from16 v17, v2

    .end local v17    # "childTop":I
    .local v2, "childTop":I
    goto :goto_4

    .line 1498
    .end local v18    # "childLeft":I
    .local v2, "childLeft":I
    .restart local v17    # "childTop":I
    :cond_2
    move/from16 v18, v2

    .line 1502
    .end local v2    # "childLeft":I
    .restart local v18    # "childLeft":I
    :goto_4
    iget v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v17, v17, v2

    .line 1503
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getLocationOffset(Landroid/view/View;)I

    move-result v2

    add-int v2, v17, v2

    move/from16 v20, v3

    move v3, v2

    move/from16 v2, v18

    move/from16 v18, v20

    .end local v3    # "layoutDirection":I
    .restart local v2    # "childLeft":I
    .local v18, "layoutDirection":I
    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->setChildFrame(Landroid/view/View;IIII)V

    .line 1505
    iget v3, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v5

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v19

    add-int v3, v3, v19

    add-int v17, v17, v3

    .line 1507
    invoke-virtual {v0, v1, v13}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v13, v3

    move/from16 v1, v17

    goto :goto_5

    .line 1468
    .end local v4    # "childWidth":I
    .end local v5    # "childHeight":I
    .end local v14    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v15    # "gravity":I
    .end local v16    # "absoluteGravity":I
    .end local v17    # "childTop":I
    .end local v18    # "layoutDirection":I
    .local v2, "childTop":I
    :cond_3
    move/from16 v17, v2

    .end local v2    # "childTop":I
    .restart local v17    # "childTop":I
    move/from16 v1, v17

    .line 1464
    .end local v17    # "childTop":I
    .local v1, "childTop":I
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    :cond_4
    nop

    .line 1510
    .end local v13    # "i":I
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_3
        0x5 -> :sswitch_2
    .end sparse-switch
.end method

.method public measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "widthMeasureSpec"    # I
    .param p4, "totalWidth"    # I
    .param p5, "heightMeasureSpec"    # I
    .param p6, "totalHeight"    # I

    .line 1381
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .end local p1    # "child":Landroid/view/View;
    .end local p3    # "widthMeasureSpec":I
    .end local p4    # "totalWidth":I
    .end local p5    # "heightMeasureSpec":I
    .end local p6    # "totalHeight":I
    .local v1, "child":Landroid/view/View;
    .local v2, "widthMeasureSpec":I
    .local v3, "totalWidth":I
    .local v4, "heightMeasureSpec":I
    .local v5, "totalHeight":I
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1383
    return-void
.end method

.method public measureHorizontal(II)V
    .locals 46
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 932
    move-object/from16 v0, p0

    const/4 v7, 0x0

    iput v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 933
    const/4 v1, 0x0

    .line 934
    .local v1, "maxHeight":I
    const/4 v2, 0x0

    .line 935
    .local v2, "childState":I
    const/4 v3, 0x0

    .line 936
    .local v3, "alternativeMaxHeight":I
    const/4 v4, 0x0

    .line 937
    .local v4, "weightedMaxHeight":I
    const/4 v5, 0x1

    .line 938
    .local v5, "allFillParent":Z
    const/4 v6, 0x0

    .line 940
    .local v6, "totalWeight":F
    invoke-virtual {v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v8

    .line 942
    .local v8, "count":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 943
    .local v9, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 945
    .local v10, "heightMode":I
    const/4 v11, 0x0

    .line 946
    .local v11, "matchHeight":Z
    const/4 v12, 0x0

    .line 948
    .local v12, "skippedMeasure":Z
    iget-object v13, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    if-eqz v13, :cond_0

    iget-object v13, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    if-nez v13, :cond_1

    .line 949
    :cond_0
    const/4 v13, 0x4

    new-array v14, v13, [I

    iput-object v14, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 950
    new-array v13, v13, [I

    iput-object v13, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    .line 953
    :cond_1
    iget-object v13, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 954
    .local v13, "maxAscent":[I
    iget-object v14, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    .line 956
    .local v14, "maxDescent":[I
    const/16 v16, 0x3

    const/4 v15, -0x1

    aput v15, v13, v16

    const/16 v17, 0x2

    aput v15, v13, v17

    const/16 v18, 0x1

    aput v15, v13, v18

    aput v15, v13, v7

    .line 957
    aput v15, v14, v16

    aput v15, v14, v17

    aput v15, v14, v18

    aput v15, v14, v7

    .line 959
    iget-boolean v15, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 960
    .local v15, "baselineAligned":Z
    move/from16 v20, v6

    .end local v6    # "totalWeight":F
    .local v20, "totalWeight":F
    iget-boolean v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 962
    .local v6, "useLargestChild":Z
    move/from16 v21, v6

    .end local v6    # "useLargestChild":Z
    .local v21, "useLargestChild":Z
    const/high16 v6, 0x40000000    # 2.0f

    if-ne v9, v6, :cond_2

    move/from16 v22, v18

    goto :goto_0

    :cond_2
    move/from16 v22, v7

    .line 964
    .local v22, "isExactly":Z
    :goto_0
    const/16 v23, 0x0

    .line 967
    .local v23, "largestChildWidth":I
    const/16 v24, 0x0

    move/from16 v45, v11

    move v11, v1

    move/from16 v1, v20

    move/from16 v20, v5

    move/from16 v5, v24

    move/from16 v24, v12

    move v12, v2

    move/from16 v2, v23

    move/from16 v23, v45

    .local v1, "totalWeight":F
    .local v2, "largestChildWidth":I
    .local v5, "i":I
    .local v11, "maxHeight":I
    .local v12, "childState":I
    .local v20, "allFillParent":Z
    .local v23, "matchHeight":Z
    .local v24, "skippedMeasure":Z
    :goto_1
    const/16 v7, 0x8

    const/16 v28, 0x0

    if-ge v5, v8, :cond_16

    .line 968
    move/from16 v29, v1

    .end local v1    # "totalWeight":F
    .local v29, "totalWeight":F
    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 970
    .local v1, "child":Landroid/view/View;
    if-nez v1, :cond_3

    .line 971
    iget v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v26

    add-int v7, v7, v26

    iput v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 972
    move v6, v5

    move/from16 v34, v8

    move/from16 v32, v9

    move-object/from16 v33, v13

    move/from16 v30, v15

    move/from16 v31, v21

    move/from16 v1, v29

    move/from16 v5, p2

    move-object/from16 v21, v14

    move v14, v3

    move/from16 v3, p1

    goto/16 :goto_c

    .line 975
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-ne v6, v7, :cond_4

    .line 976
    invoke-virtual {v0, v1, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v6

    add-int/2addr v5, v6

    .line 977
    move v6, v5

    move/from16 v34, v8

    move/from16 v32, v9

    move-object/from16 v33, v13

    move/from16 v30, v15

    move/from16 v31, v21

    move/from16 v1, v29

    move/from16 v5, p2

    move-object/from16 v21, v14

    move v14, v3

    move/from16 v3, p1

    goto/16 :goto_c

    .line 980
    :cond_4
    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 981
    iget v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iget v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v6, v7

    iput v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 984
    :cond_5
    nop

    .line 985
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 987
    .local v7, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v6, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    add-float v29, v29, v6

    .line 989
    const/high16 v6, 0x40000000    # 2.0f

    if-ne v9, v6, :cond_8

    iget v6, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-nez v6, :cond_8

    iget v6, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v6, v6, v28

    if-lez v6, :cond_8

    .line 993
    if-eqz v22, :cond_6

    .line 994
    iget v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v31, v2

    .end local v2    # "largestChildWidth":I
    .local v31, "largestChildWidth":I
    iget v2, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v26, v2

    iget v2, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int v2, v26, v2

    add-int/2addr v6, v2

    iput v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v32, v3

    goto :goto_2

    .line 996
    .end local v31    # "largestChildWidth":I
    .restart local v2    # "largestChildWidth":I
    :cond_6
    move/from16 v31, v2

    .end local v2    # "largestChildWidth":I
    .restart local v31    # "largestChildWidth":I
    iget v2, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 997
    .local v2, "totalLength":I
    iget v6, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v6, v2

    move/from16 v32, v3

    .end local v3    # "alternativeMaxHeight":I
    .local v32, "alternativeMaxHeight":I
    iget v3, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v6, v3

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1006
    .end local v2    # "totalLength":I
    :goto_2
    if-eqz v15, :cond_7

    .line 1007
    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1008
    .local v3, "freeSpec":I
    invoke-virtual {v1, v3, v3}, Landroid/view/View;->measure(II)V

    .line 1009
    .end local v3    # "freeSpec":I
    move/from16 v3, p1

    move v2, v5

    move/from16 v34, v8

    move-object/from16 v33, v13

    move/from16 v30, v15

    move/from16 v13, v31

    move/from16 v5, p2

    move v15, v4

    move/from16 v31, v21

    move-object/from16 v21, v14

    move/from16 v14, v32

    move/from16 v32, v9

    goto/16 :goto_5

    .line 1010
    :cond_7
    const/16 v24, 0x1

    move/from16 v3, p1

    move v2, v5

    move/from16 v34, v8

    move-object/from16 v33, v13

    move/from16 v30, v15

    move/from16 v13, v31

    move/from16 v5, p2

    move v15, v4

    move/from16 v31, v21

    move-object/from16 v21, v14

    move/from16 v14, v32

    move/from16 v32, v9

    goto/16 :goto_5

    .line 989
    .end local v31    # "largestChildWidth":I
    .end local v32    # "alternativeMaxHeight":I
    .local v2, "largestChildWidth":I
    .local v3, "alternativeMaxHeight":I
    :cond_8
    move/from16 v31, v2

    move/from16 v32, v3

    .line 1013
    .end local v2    # "largestChildWidth":I
    .end local v3    # "alternativeMaxHeight":I
    .restart local v31    # "largestChildWidth":I
    .restart local v32    # "alternativeMaxHeight":I
    const/high16 v2, -0x80000000

    .line 1015
    .local v2, "oldWidth":I
    iget v3, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-nez v3, :cond_9

    iget v3, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v3, v3, v28

    if-lez v3, :cond_9

    .line 1020
    const/4 v2, 0x0

    .line 1021
    const/4 v3, -0x2

    iput v3, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1028
    :cond_9
    cmpl-float v3, v29, v28

    if-nez v3, :cond_a

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v45, v4

    move v4, v3

    move/from16 v3, v45

    goto :goto_3

    :cond_a
    move v3, v4

    const/4 v4, 0x0

    .end local v4    # "weightedMaxHeight":I
    .local v3, "weightedMaxHeight":I
    :goto_3
    const/4 v6, 0x0

    move/from16 v34, v8

    move-object/from16 v33, v13

    move/from16 v30, v15

    move/from16 v13, v31

    const/high16 v8, 0x40000000    # 2.0f

    move v15, v3

    move/from16 v31, v21

    move/from16 v3, p1

    move-object/from16 v21, v14

    move/from16 v14, v32

    move/from16 v32, v9

    move v9, v2

    move v2, v5

    move/from16 v5, p2

    .end local v3    # "weightedMaxHeight":I
    .end local v5    # "i":I
    .end local v8    # "count":I
    .local v2, "i":I
    .local v9, "oldWidth":I
    .local v13, "largestChildWidth":I
    .local v14, "alternativeMaxHeight":I
    .local v15, "weightedMaxHeight":I
    .local v21, "maxDescent":[I
    .local v30, "baselineAligned":Z
    .local v31, "useLargestChild":Z
    .local v32, "widthMode":I
    .local v33, "maxAscent":[I
    .local v34, "count":I
    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 1032
    const/high16 v4, -0x80000000

    if-eq v9, v4, :cond_b

    .line 1033
    iput v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1036
    :cond_b
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 1037
    .local v4, "childWidth":I
    if-eqz v22, :cond_c

    .line 1038
    iget v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v8, v4

    move/from16 v26, v6

    iget v6, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v8, v6

    .line 1039
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v8, v6

    add-int v6, v26, v8

    iput v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_4

    .line 1041
    :cond_c
    iget v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1042
    .local v6, "totalLength":I
    add-int v8, v6, v4

    move/from16 v26, v8

    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int v8, v26, v8

    move/from16 v26, v8

    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int v8, v26, v8

    .line 1043
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v26

    add-int v8, v8, v26

    .line 1042
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1046
    .end local v6    # "totalLength":I
    :goto_4
    if-eqz v31, :cond_d

    .line 1047
    invoke-static {v4, v13}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v13, v6

    .line 1051
    .end local v4    # "childWidth":I
    .end local v9    # "oldWidth":I
    :cond_d
    :goto_5
    const/4 v4, 0x0

    .line 1052
    .local v4, "matchHeightLocally":Z
    const/high16 v6, 0x40000000    # 2.0f

    if-eq v10, v6, :cond_e

    iget v6, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v8, -0x1

    if-ne v6, v8, :cond_e

    .line 1056
    const/16 v23, 0x1

    .line 1057
    const/4 v4, 0x1

    .line 1060
    :cond_e
    iget v6, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v6, v8

    .line 1061
    .local v6, "margin":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v6

    .line 1062
    .local v8, "childHeight":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v9

    invoke-static {v12, v9}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v9

    .line 1064
    .end local v12    # "childState":I
    .local v9, "childState":I
    if-eqz v30, :cond_11

    .line 1065
    invoke-virtual {v1}, Landroid/view/View;->getBaseline()I

    move-result v12

    .line 1066
    .local v12, "childBaseline":I
    move/from16 v26, v4

    const/4 v4, -0x1

    .end local v4    # "matchHeightLocally":Z
    .local v26, "matchHeightLocally":Z
    if-eq v12, v4, :cond_10

    .line 1069
    iget v4, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gez v4, :cond_f

    iget v4, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    goto :goto_6

    :cond_f
    iget v4, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    :goto_6
    and-int/lit8 v4, v4, 0x70

    .line 1071
    .local v4, "gravity":I
    shr-int/lit8 v35, v4, 0x4

    const/16 v27, -0x2

    and-int/lit8 v27, v35, -0x2

    shr-int/lit8 v27, v27, 0x1

    .line 1074
    .local v27, "index":I
    move/from16 v35, v4

    .end local v4    # "gravity":I
    .local v35, "gravity":I
    aget v4, v33, v27

    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, v33, v27

    .line 1075
    aget v4, v21, v27

    move/from16 v36, v6

    .end local v6    # "margin":I
    .local v36, "margin":I
    sub-int v6, v8, v12

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, v21, v27

    goto :goto_7

    .line 1066
    .end local v27    # "index":I
    .end local v35    # "gravity":I
    .end local v36    # "margin":I
    .restart local v6    # "margin":I
    :cond_10
    move/from16 v36, v6

    .end local v6    # "margin":I
    .restart local v36    # "margin":I
    goto :goto_7

    .line 1064
    .end local v12    # "childBaseline":I
    .end local v26    # "matchHeightLocally":Z
    .end local v36    # "margin":I
    .local v4, "matchHeightLocally":Z
    .restart local v6    # "margin":I
    :cond_11
    move/from16 v26, v4

    move/from16 v36, v6

    .line 1079
    .end local v4    # "matchHeightLocally":Z
    .end local v6    # "margin":I
    .restart local v26    # "matchHeightLocally":Z
    .restart local v36    # "margin":I
    :goto_7
    invoke-static {v11, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1081
    .end local v11    # "maxHeight":I
    .local v4, "maxHeight":I
    if-eqz v20, :cond_12

    iget v6, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v11, -0x1

    if-ne v6, v11, :cond_12

    move/from16 v6, v18

    goto :goto_8

    :cond_12
    const/4 v6, 0x0

    .line 1082
    .end local v20    # "allFillParent":Z
    .local v6, "allFillParent":Z
    :goto_8
    iget v11, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v11, v11, v28

    if-lez v11, :cond_14

    .line 1087
    if-eqz v26, :cond_13

    move/from16 v11, v36

    goto :goto_9

    :cond_13
    move v11, v8

    :goto_9
    invoke-static {v15, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    move v15, v11

    .end local v15    # "weightedMaxHeight":I
    .local v11, "weightedMaxHeight":I
    goto :goto_b

    .line 1090
    .end local v11    # "weightedMaxHeight":I
    .restart local v15    # "weightedMaxHeight":I
    :cond_14
    if-eqz v26, :cond_15

    move/from16 v11, v36

    goto :goto_a

    :cond_15
    move v11, v8

    :goto_a
    invoke-static {v14, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    move v14, v11

    .line 1094
    :goto_b
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v11

    add-int/2addr v2, v11

    move v11, v4

    move/from16 v20, v6

    move v12, v9

    move v4, v15

    move/from16 v1, v29

    move v6, v2

    move v2, v13

    .line 967
    .end local v7    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v8    # "childHeight":I
    .end local v9    # "childState":I
    .end local v13    # "largestChildWidth":I
    .end local v15    # "weightedMaxHeight":I
    .end local v26    # "matchHeightLocally":Z
    .end local v29    # "totalWeight":F
    .end local v36    # "margin":I
    .local v1, "totalWeight":F
    .local v2, "largestChildWidth":I
    .local v4, "weightedMaxHeight":I
    .local v6, "i":I
    .local v11, "maxHeight":I
    .local v12, "childState":I
    .restart local v20    # "allFillParent":Z
    :goto_c
    add-int/lit8 v6, v6, 0x1

    move v5, v6

    move v3, v14

    move-object/from16 v14, v21

    move/from16 v15, v30

    move/from16 v21, v31

    move/from16 v9, v32

    move-object/from16 v13, v33

    move/from16 v8, v34

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x0

    goto/16 :goto_1

    .end local v6    # "i":I
    .end local v30    # "baselineAligned":Z
    .end local v31    # "useLargestChild":Z
    .end local v32    # "widthMode":I
    .end local v33    # "maxAscent":[I
    .end local v34    # "count":I
    .local v3, "alternativeMaxHeight":I
    .restart local v5    # "i":I
    .local v8, "count":I
    .local v9, "widthMode":I
    .local v13, "maxAscent":[I
    .local v14, "maxDescent":[I
    .local v15, "baselineAligned":Z
    .local v21, "useLargestChild":Z
    :cond_16
    move/from16 v29, v1

    move/from16 v34, v8

    move/from16 v32, v9

    move-object/from16 v33, v13

    move/from16 v30, v15

    move/from16 v31, v21

    move v13, v2

    move v15, v4

    move v2, v5

    move-object/from16 v21, v14

    move/from16 v5, p2

    move v14, v3

    move/from16 v3, p1

    .line 1097
    .end local v1    # "totalWeight":F
    .end local v2    # "largestChildWidth":I
    .end local v3    # "alternativeMaxHeight":I
    .end local v4    # "weightedMaxHeight":I
    .end local v5    # "i":I
    .end local v8    # "count":I
    .end local v9    # "widthMode":I
    .local v13, "largestChildWidth":I
    .local v14, "alternativeMaxHeight":I
    .local v15, "weightedMaxHeight":I
    .local v21, "maxDescent":[I
    .restart local v29    # "totalWeight":F
    .restart local v30    # "baselineAligned":Z
    .restart local v31    # "useLargestChild":Z
    .restart local v32    # "widthMode":I
    .restart local v33    # "maxAscent":[I
    .restart local v34    # "count":I
    iget v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    if-lez v1, :cond_17

    move/from16 v1, v34

    .end local v34    # "count":I
    .local v1, "count":I
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1098
    iget v2, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iget v4, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v2, v4

    iput v2, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_d

    .line 1097
    .end local v1    # "count":I
    .restart local v34    # "count":I
    :cond_17
    move/from16 v1, v34

    .line 1103
    .end local v34    # "count":I
    .restart local v1    # "count":I
    :cond_18
    :goto_d
    aget v2, v33, v18

    const/4 v4, -0x1

    if-ne v2, v4, :cond_19

    const/16 v25, 0x0

    aget v2, v33, v25

    if-ne v2, v4, :cond_19

    aget v2, v33, v17

    if-ne v2, v4, :cond_19

    aget v2, v33, v16

    if-eq v2, v4, :cond_1a

    .line 1107
    :cond_19
    aget v2, v33, v16

    const/16 v25, 0x0

    aget v4, v33, v25

    aget v6, v33, v18

    aget v8, v33, v17

    .line 1109
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1108
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1107
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1110
    .local v2, "ascent":I
    aget v4, v21, v16

    aget v6, v21, v25

    aget v8, v21, v18

    aget v9, v21, v17

    .line 1112
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1111
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1110
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1113
    .local v4, "descent":I
    add-int v6, v2, v4

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1116
    .end local v2    # "ascent":I
    .end local v4    # "descent":I
    :cond_1a
    if-eqz v31, :cond_20

    move/from16 v2, v32

    const/high16 v4, -0x80000000

    .end local v32    # "widthMode":I
    .local v2, "widthMode":I
    if-eq v2, v4, :cond_1b

    if-nez v2, :cond_21

    .line 1118
    :cond_1b
    const/4 v4, 0x0

    iput v4, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1120
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_e
    if-ge v4, v1, :cond_1f

    .line 1121
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1123
    .local v6, "child":Landroid/view/View;
    if-nez v6, :cond_1c

    .line 1124
    iget v8, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1125
    move/from16 v32, v4

    goto :goto_f

    .line 1128
    :cond_1c
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-ne v8, v7, :cond_1d

    .line 1129
    invoke-virtual {v0, v6, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v8

    add-int/2addr v4, v8

    .line 1130
    goto :goto_10

    .line 1133
    :cond_1d
    nop

    .line 1134
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1135
    .local v8, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    if-eqz v22, :cond_1e

    .line 1136
    iget v9, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iget v7, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v7, v13

    move/from16 v32, v4

    .end local v4    # "i":I
    .local v32, "i":I
    iget v4, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v7, v4

    .line 1137
    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v7, v4

    add-int/2addr v9, v7

    iput v9, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_f

    .line 1139
    .end local v32    # "i":I
    .restart local v4    # "i":I
    :cond_1e
    move/from16 v32, v4

    .end local v4    # "i":I
    .restart local v32    # "i":I
    iget v4, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1140
    .local v4, "totalLength":I
    add-int v7, v4, v13

    iget v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v7, v9

    iget v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v7, v9

    .line 1141
    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v9

    add-int/2addr v7, v9

    .line 1140
    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1120
    .end local v6    # "child":Landroid/view/View;
    .end local v8    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v32    # "i":I
    .local v4, "i":I
    :goto_f
    move/from16 v4, v32

    :goto_10
    add-int/lit8 v4, v4, 0x1

    const/16 v7, 0x8

    goto :goto_e

    :cond_1f
    move/from16 v32, v4

    .end local v4    # "i":I
    .restart local v32    # "i":I
    goto :goto_11

    .line 1116
    .end local v2    # "widthMode":I
    .local v32, "widthMode":I
    :cond_20
    move/from16 v2, v32

    .line 1147
    .end local v32    # "widthMode":I
    .restart local v2    # "widthMode":I
    :cond_21
    :goto_11
    iget v4, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v4, v6

    iput v4, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1149
    iget v4, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1152
    .local v4, "widthSize":I
    invoke-virtual {v0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1155
    const/4 v6, 0x0

    invoke-static {v4, v3, v6}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v7

    .line 1156
    .local v7, "widthSizeAndState":I
    const v6, 0xffffff

    and-int v4, v7, v6

    .line 1161
    iget v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int v6, v4, v6

    .line 1162
    .local v6, "delta":I
    if-nez v24, :cond_28

    if-eqz v6, :cond_22

    cmpl-float v9, v29, v28

    if-lez v9, :cond_22

    move/from16 v34, v4

    move/from16 v35, v6

    move/from16 v36, v7

    const/high16 v32, -0x1000000

    goto/16 :goto_15

    .line 1273
    :cond_22
    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1277
    .end local v14    # "alternativeMaxHeight":I
    .local v9, "alternativeMaxHeight":I
    if-eqz v31, :cond_27

    const/high16 v14, 0x40000000    # 2.0f

    if-eq v2, v14, :cond_27

    .line 1278
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_12
    if-ge v14, v1, :cond_26

    .line 1279
    const/high16 v32, -0x1000000

    invoke-virtual {v0, v14}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1281
    .local v8, "child":Landroid/view/View;
    if-eqz v8, :cond_25

    move/from16 v34, v4

    .end local v4    # "widthSize":I
    .local v34, "widthSize":I
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v4

    move/from16 v35, v6

    const/16 v6, 0x8

    .end local v6    # "delta":I
    .local v35, "delta":I
    if-ne v4, v6, :cond_23

    .line 1282
    move/from16 v36, v7

    goto :goto_13

    .line 1285
    :cond_23
    nop

    .line 1286
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1288
    .local v4, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v6, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 1289
    .local v6, "childExtra":F
    cmpl-float v16, v6, v28

    if-lez v16, :cond_24

    .line 1290
    nop

    .line 1291
    move-object/from16 v16, v4

    move/from16 v17, v6

    const/high16 v4, 0x40000000    # 2.0f

    .end local v4    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v6    # "childExtra":F
    .local v16, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .local v17, "childExtra":F
    invoke-static {v13, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1292
    move/from16 v36, v7

    .end local v7    # "widthSizeAndState":I
    .local v36, "widthSizeAndState":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v7, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 1290
    invoke-virtual {v8, v6, v7}, Landroid/view/View;->measure(II)V

    goto :goto_13

    .line 1289
    .end local v16    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v17    # "childExtra":F
    .end local v36    # "widthSizeAndState":I
    .restart local v4    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .restart local v6    # "childExtra":F
    .restart local v7    # "widthSizeAndState":I
    :cond_24
    move-object/from16 v16, v4

    move/from16 v17, v6

    move/from16 v36, v7

    .end local v4    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v6    # "childExtra":F
    .end local v7    # "widthSizeAndState":I
    .restart local v16    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .restart local v17    # "childExtra":F
    .restart local v36    # "widthSizeAndState":I
    goto :goto_13

    .line 1281
    .end local v16    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v17    # "childExtra":F
    .end local v34    # "widthSize":I
    .end local v35    # "delta":I
    .end local v36    # "widthSizeAndState":I
    .local v4, "widthSize":I
    .local v6, "delta":I
    .restart local v7    # "widthSizeAndState":I
    :cond_25
    move/from16 v34, v4

    move/from16 v35, v6

    move/from16 v36, v7

    .line 1278
    .end local v4    # "widthSize":I
    .end local v6    # "delta":I
    .end local v7    # "widthSizeAndState":I
    .end local v8    # "child":Landroid/view/View;
    .restart local v34    # "widthSize":I
    .restart local v35    # "delta":I
    .restart local v36    # "widthSizeAndState":I
    :goto_13
    add-int/lit8 v14, v14, 0x1

    move/from16 v4, v34

    move/from16 v6, v35

    move/from16 v7, v36

    goto :goto_12

    .end local v34    # "widthSize":I
    .end local v35    # "delta":I
    .end local v36    # "widthSizeAndState":I
    .restart local v4    # "widthSize":I
    .restart local v6    # "delta":I
    .restart local v7    # "widthSizeAndState":I
    :cond_26
    move/from16 v34, v4

    move/from16 v35, v6

    move/from16 v36, v7

    const/high16 v32, -0x1000000

    .end local v4    # "widthSize":I
    .end local v6    # "delta":I
    .end local v7    # "widthSizeAndState":I
    .restart local v34    # "widthSize":I
    .restart local v35    # "delta":I
    .restart local v36    # "widthSizeAndState":I
    goto :goto_14

    .line 1277
    .end local v14    # "i":I
    .end local v34    # "widthSize":I
    .end local v35    # "delta":I
    .end local v36    # "widthSizeAndState":I
    .restart local v4    # "widthSize":I
    .restart local v6    # "delta":I
    .restart local v7    # "widthSizeAndState":I
    :cond_27
    move/from16 v34, v4

    move/from16 v35, v6

    move/from16 v36, v7

    const/high16 v32, -0x1000000

    .line 1299
    .end local v4    # "widthSize":I
    .end local v6    # "delta":I
    .end local v7    # "widthSizeAndState":I
    .restart local v34    # "widthSize":I
    .restart local v35    # "delta":I
    .restart local v36    # "widthSizeAndState":I
    :goto_14
    move/from16 v40, v2

    move/from16 v6, v35

    goto/16 :goto_26

    .line 1162
    .end local v9    # "alternativeMaxHeight":I
    .end local v34    # "widthSize":I
    .end local v35    # "delta":I
    .end local v36    # "widthSizeAndState":I
    .restart local v4    # "widthSize":I
    .restart local v6    # "delta":I
    .restart local v7    # "widthSizeAndState":I
    .local v14, "alternativeMaxHeight":I
    :cond_28
    move/from16 v34, v4

    move/from16 v35, v6

    move/from16 v36, v7

    const/high16 v32, -0x1000000

    .line 1163
    .end local v4    # "widthSize":I
    .end local v6    # "delta":I
    .end local v7    # "widthSizeAndState":I
    .restart local v34    # "widthSize":I
    .restart local v35    # "delta":I
    .restart local v36    # "widthSizeAndState":I
    :goto_15
    iget v4, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    cmpl-float v4, v4, v28

    if-lez v4, :cond_29

    iget v4, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    goto :goto_16

    :cond_29
    move/from16 v4, v29

    .line 1165
    .local v4, "weightSum":F
    :goto_16
    const/16 v19, -0x1

    aput v19, v33, v16

    aput v19, v33, v17

    aput v19, v33, v18

    const/4 v6, 0x0

    aput v19, v33, v6

    .line 1166
    aput v19, v21, v16

    aput v19, v21, v17

    aput v19, v21, v18

    aput v19, v21, v6

    .line 1167
    const/4 v7, -0x1

    .line 1169
    .end local v11    # "maxHeight":I
    .local v7, "maxHeight":I
    iput v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1171
    const/4 v6, 0x0

    move v8, v7

    move/from16 v7, v35

    .end local v35    # "delta":I
    .local v6, "i":I
    .local v7, "delta":I
    .local v8, "maxHeight":I
    :goto_17
    if-ge v6, v1, :cond_39

    .line 1172
    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1174
    .local v9, "child":Landroid/view/View;
    if-eqz v9, :cond_38

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v11

    move/from16 v35, v4

    const/16 v4, 0x8

    .end local v4    # "weightSum":F
    .local v35, "weightSum":F
    if-ne v11, v4, :cond_2a

    .line 1175
    move/from16 v40, v2

    move/from16 v38, v6

    const/16 v27, -0x2

    goto/16 :goto_22

    .line 1178
    :cond_2a
    nop

    .line 1179
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1181
    .local v11, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v4, v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 1182
    .local v4, "childExtra":F
    cmpl-float v37, v4, v28

    if-lez v37, :cond_2f

    .line 1184
    move/from16 v37, v4

    .end local v4    # "childExtra":F
    .local v37, "childExtra":F
    int-to-float v4, v7

    mul-float v4, v4, v37

    div-float v4, v4, v35

    float-to-int v4, v4

    .line 1185
    .local v4, "share":I
    sub-float v35, v35, v37

    .line 1186
    sub-int/2addr v7, v4

    .line 1188
    nop

    .line 1190
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v38

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v39

    add-int v38, v38, v39

    move/from16 v39, v4

    .end local v4    # "share":I
    .local v39, "share":I
    iget v4, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v38, v38, v4

    iget v4, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v4, v38, v4

    move/from16 v38, v6

    .end local v6    # "i":I
    .local v38, "i":I
    iget v6, v11, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1188
    invoke-static {v5, v4, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v4

    .line 1195
    .local v4, "childHeightMeasureSpec":I
    iget v6, v11, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-nez v6, :cond_2d

    const/high16 v6, 0x40000000    # 2.0f

    if-eq v2, v6, :cond_2b

    move/from16 v40, v2

    goto :goto_19

    .line 1208
    :cond_2b
    move/from16 v40, v2

    if-lez v39, :cond_2c

    move/from16 v2, v39

    goto :goto_18

    :cond_2c
    const/4 v2, 0x0

    .end local v2    # "widthMode":I
    .local v40, "widthMode":I
    :goto_18
    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v9, v2, v4}, Landroid/view/View;->measure(II)V

    move/from16 v41, v7

    goto :goto_1a

    .line 1195
    .end local v40    # "widthMode":I
    .restart local v2    # "widthMode":I
    :cond_2d
    move/from16 v40, v2

    .line 1198
    .end local v2    # "widthMode":I
    .restart local v40    # "widthMode":I
    :goto_19
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int v2, v2, v39

    .line 1199
    .local v2, "childWidth":I
    if-gez v2, :cond_2e

    .line 1200
    const/4 v2, 0x0

    .line 1203
    :cond_2e
    nop

    .line 1204
    move/from16 v41, v7

    const/high16 v6, 0x40000000    # 2.0f

    .end local v7    # "delta":I
    .local v41, "delta":I
    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 1203
    invoke-virtual {v9, v7, v4}, Landroid/view/View;->measure(II)V

    .line 1206
    .end local v2    # "childWidth":I
    nop

    .line 1214
    :goto_1a
    nop

    .line 1215
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    and-int v2, v2, v32

    .line 1214
    invoke-static {v12, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v12

    move/from16 v7, v41

    move/from16 v4, v35

    goto :goto_1b

    .line 1182
    .end local v37    # "childExtra":F
    .end local v38    # "i":I
    .end local v39    # "share":I
    .end local v40    # "widthMode":I
    .end local v41    # "delta":I
    .local v2, "widthMode":I
    .local v4, "childExtra":F
    .restart local v6    # "i":I
    .restart local v7    # "delta":I
    :cond_2f
    move/from16 v40, v2

    move/from16 v37, v4

    move/from16 v38, v6

    .end local v2    # "widthMode":I
    .end local v4    # "childExtra":F
    .end local v6    # "i":I
    .restart local v37    # "childExtra":F
    .restart local v38    # "i":I
    .restart local v40    # "widthMode":I
    move/from16 v4, v35

    .line 1218
    .end local v35    # "weightSum":F
    .local v4, "weightSum":F
    :goto_1b
    if-eqz v22, :cond_30

    .line 1219
    iget v2, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    move/from16 v35, v2

    iget v2, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v6, v2

    iget v2, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v6, v2

    .line 1220
    invoke-virtual {v0, v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v2

    add-int/2addr v6, v2

    add-int v2, v35, v6

    iput v2, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v35, v4

    goto :goto_1c

    .line 1222
    :cond_30
    iget v2, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1223
    .local v2, "totalLength":I
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v2

    move/from16 v35, v4

    .end local v4    # "weightSum":F
    .restart local v35    # "weightSum":F
    iget v4, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v6, v4

    iget v4, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v6, v4

    .line 1224
    invoke-virtual {v0, v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v6, v4

    .line 1223
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1227
    .end local v2    # "totalLength":I
    :goto_1c
    const/high16 v6, 0x40000000    # 2.0f

    if-eq v10, v6, :cond_31

    iget v2, v11, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_31

    move/from16 v2, v18

    goto :goto_1d

    :cond_31
    const/4 v2, 0x0

    .line 1230
    .local v2, "matchHeightLocally":Z
    :goto_1d
    iget v4, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v6, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v6

    .line 1231
    .local v4, "margin":I
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v4

    .line 1232
    .local v6, "childHeight":I
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1233
    move/from16 v39, v2

    if-eqz v2, :cond_32

    move v2, v4

    goto :goto_1e

    :cond_32
    move v2, v6

    .end local v2    # "matchHeightLocally":Z
    .local v39, "matchHeightLocally":Z
    :goto_1e
    invoke-static {v14, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1236
    .end local v14    # "alternativeMaxHeight":I
    .local v2, "alternativeMaxHeight":I
    if-eqz v20, :cond_33

    iget v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move/from16 v41, v2

    const/4 v2, -0x1

    .end local v2    # "alternativeMaxHeight":I
    .local v41, "alternativeMaxHeight":I
    if-ne v14, v2, :cond_34

    move/from16 v2, v18

    goto :goto_1f

    .end local v41    # "alternativeMaxHeight":I
    .restart local v2    # "alternativeMaxHeight":I
    :cond_33
    move/from16 v41, v2

    .end local v2    # "alternativeMaxHeight":I
    .restart local v41    # "alternativeMaxHeight":I
    :cond_34
    const/4 v2, 0x0

    .line 1238
    .end local v20    # "allFillParent":Z
    .local v2, "allFillParent":Z
    :goto_1f
    if-eqz v30, :cond_37

    .line 1239
    invoke-virtual {v9}, Landroid/view/View;->getBaseline()I

    move-result v14

    .line 1240
    .local v14, "childBaseline":I
    move/from16 v20, v2

    const/4 v2, -0x1

    .end local v2    # "allFillParent":Z
    .restart local v20    # "allFillParent":Z
    if-eq v14, v2, :cond_36

    .line 1242
    iget v2, v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gez v2, :cond_35

    iget v2, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    goto :goto_20

    :cond_35
    iget v2, v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    :goto_20
    and-int/lit8 v2, v2, 0x70

    .line 1244
    .local v2, "gravity":I
    shr-int/lit8 v42, v2, 0x4

    const/16 v27, -0x2

    and-int/lit8 v42, v42, -0x2

    shr-int/lit8 v42, v42, 0x1

    .line 1247
    .local v42, "index":I
    move/from16 v43, v2

    .end local v2    # "gravity":I
    .local v43, "gravity":I
    aget v2, v33, v42

    invoke-static {v2, v14}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v33, v42

    .line 1248
    aget v2, v21, v42

    move/from16 v44, v4

    .end local v4    # "margin":I
    .local v44, "margin":I
    sub-int v4, v6, v14

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v21, v42

    goto :goto_21

    .line 1240
    .end local v42    # "index":I
    .end local v43    # "gravity":I
    .end local v44    # "margin":I
    .restart local v4    # "margin":I
    :cond_36
    move/from16 v44, v4

    const/16 v27, -0x2

    .end local v4    # "margin":I
    .restart local v44    # "margin":I
    goto :goto_21

    .line 1238
    .end local v14    # "childBaseline":I
    .end local v20    # "allFillParent":Z
    .end local v44    # "margin":I
    .local v2, "allFillParent":Z
    .restart local v4    # "margin":I
    :cond_37
    move/from16 v20, v2

    move/from16 v44, v4

    const/16 v27, -0x2

    .line 1171
    .end local v2    # "allFillParent":Z
    .end local v4    # "margin":I
    .end local v6    # "childHeight":I
    .end local v9    # "child":Landroid/view/View;
    .end local v11    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v37    # "childExtra":F
    .end local v39    # "matchHeightLocally":Z
    .restart local v20    # "allFillParent":Z
    :goto_21
    move/from16 v14, v41

    move/from16 v4, v35

    goto :goto_23

    .line 1174
    .end local v35    # "weightSum":F
    .end local v38    # "i":I
    .end local v40    # "widthMode":I
    .end local v41    # "alternativeMaxHeight":I
    .local v2, "widthMode":I
    .local v4, "weightSum":F
    .local v6, "i":I
    .restart local v9    # "child":Landroid/view/View;
    .local v14, "alternativeMaxHeight":I
    :cond_38
    move/from16 v40, v2

    move/from16 v35, v4

    move/from16 v38, v6

    const/16 v27, -0x2

    .line 1171
    .end local v4    # "weightSum":F
    .end local v9    # "child":Landroid/view/View;
    .restart local v35    # "weightSum":F
    :goto_22
    move/from16 v4, v35

    .end local v2    # "widthMode":I
    .end local v6    # "i":I
    .end local v35    # "weightSum":F
    .restart local v4    # "weightSum":F
    .restart local v38    # "i":I
    .restart local v40    # "widthMode":I
    :goto_23
    add-int/lit8 v6, v38, 0x1

    move/from16 v2, v40

    .end local v38    # "i":I
    .restart local v6    # "i":I
    goto/16 :goto_17

    .end local v40    # "widthMode":I
    .restart local v2    # "widthMode":I
    :cond_39
    move/from16 v40, v2

    move/from16 v35, v4

    move/from16 v38, v6

    .line 1255
    .end local v2    # "widthMode":I
    .end local v4    # "weightSum":F
    .end local v6    # "i":I
    .restart local v35    # "weightSum":F
    .restart local v40    # "widthMode":I
    iget v2, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    add-int/2addr v4, v6

    add-int/2addr v2, v4

    iput v2, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1260
    aget v2, v33, v18

    const/4 v4, -0x1

    if-ne v2, v4, :cond_3a

    const/16 v25, 0x0

    aget v2, v33, v25

    if-ne v2, v4, :cond_3a

    aget v2, v33, v17

    if-ne v2, v4, :cond_3a

    aget v2, v33, v16

    if-eq v2, v4, :cond_3b

    :cond_3a
    goto :goto_24

    :cond_3b
    move v11, v8

    goto :goto_25

    .line 1264
    :goto_24
    aget v2, v33, v16

    const/16 v25, 0x0

    aget v4, v33, v25

    aget v6, v33, v18

    aget v9, v33, v17

    .line 1266
    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1265
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1264
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1267
    .local v2, "ascent":I
    aget v4, v21, v16

    aget v6, v21, v25

    aget v9, v21, v18

    aget v11, v21, v17

    .line 1269
    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1268
    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1267
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1270
    .local v4, "descent":I
    add-int v6, v2, v4

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v11, v6

    .line 1272
    .end local v2    # "ascent":I
    .end local v4    # "descent":I
    .end local v8    # "maxHeight":I
    .end local v35    # "weightSum":F
    .local v11, "maxHeight":I
    :goto_25
    move v6, v7

    move v9, v14

    .line 1299
    .end local v7    # "delta":I
    .end local v14    # "alternativeMaxHeight":I
    .local v6, "delta":I
    .local v9, "alternativeMaxHeight":I
    :goto_26
    if-nez v20, :cond_3c

    const/high16 v14, 0x40000000    # 2.0f

    if-eq v10, v14, :cond_3c

    .line 1300
    move v11, v9

    .line 1303
    :cond_3c
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v11, v2

    .line 1306
    invoke-virtual {v0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1308
    .end local v11    # "maxHeight":I
    .local v2, "maxHeight":I
    and-int v4, v12, v32

    or-int v4, v36, v4

    shl-int/lit8 v7, v12, 0x10

    .line 1309
    invoke-static {v2, v5, v7}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v7

    .line 1308
    invoke-virtual {v0, v4, v7}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 1312
    if-eqz v23, :cond_3d

    .line 1313
    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->forceUniformHeight(II)V

    .line 1315
    :cond_3d
    return-void
.end method

.method public measureNullChild(I)I
    .locals 1
    .param p1, "childIndex"    # I

    .line 1362
    const/4 v0, 0x0

    return v0
.end method

.method public measureVertical(II)V
    .locals 38
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 599
    move-object/from16 v0, p0

    const/4 v7, 0x0

    iput v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 600
    const/4 v1, 0x0

    .line 601
    .local v1, "maxWidth":I
    const/4 v2, 0x0

    .line 602
    .local v2, "childState":I
    const/4 v3, 0x0

    .line 603
    .local v3, "alternativeMaxWidth":I
    const/4 v4, 0x0

    .line 604
    .local v4, "weightedMaxWidth":I
    const/4 v5, 0x1

    .line 605
    .local v5, "allFillParent":Z
    const/4 v6, 0x0

    .line 607
    .local v6, "totalWeight":F
    invoke-virtual {v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v8

    .line 609
    .local v8, "count":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 610
    .local v9, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 612
    .local v10, "heightMode":I
    const/4 v11, 0x0

    .line 613
    .local v11, "matchWidth":Z
    const/4 v12, 0x0

    .line 615
    .local v12, "skippedMeasure":Z
    iget v13, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 616
    .local v13, "baselineChildIndex":I
    iget-boolean v14, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 618
    .local v14, "useLargestChild":Z
    const/4 v15, 0x0

    .line 621
    .local v15, "largestChildHeight":I
    const/16 v16, 0x0

    move/from16 v17, v11

    move/from16 v18, v12

    move v11, v1

    move v12, v2

    move v1, v15

    move/from16 v2, v16

    move v15, v3

    move/from16 v16, v5

    .end local v3    # "alternativeMaxWidth":I
    .end local v5    # "allFillParent":Z
    .local v1, "largestChildHeight":I
    .local v2, "i":I
    .local v11, "maxWidth":I
    .local v12, "childState":I
    .local v15, "alternativeMaxWidth":I
    .local v16, "allFillParent":Z
    .local v17, "matchWidth":Z
    .local v18, "skippedMeasure":Z
    :goto_0
    const/16 v3, 0x8

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    if-ge v2, v8, :cond_12

    .line 622
    move/from16 v23, v1

    .end local v1    # "largestChildHeight":I
    .local v23, "largestChildHeight":I
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 624
    .local v1, "child":Landroid/view/View;
    if-nez v1, :cond_0

    .line 625
    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v5

    add-int/2addr v3, v5

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 626
    move/from16 v1, p1

    move/from16 v5, p2

    move/from16 v19, v10

    move/from16 v27, v14

    move/from16 v14, v23

    move/from16 v23, v8

    goto/16 :goto_a

    .line 629
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-ne v5, v3, :cond_1

    .line 630
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v2, v3

    .line 631
    move/from16 v1, p1

    move/from16 v5, p2

    move/from16 v19, v10

    move/from16 v27, v14

    move/from16 v14, v23

    move/from16 v23, v8

    goto/16 :goto_a

    .line 634
    :cond_1
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 635
    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iget v5, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v3, v5

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 638
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 640
    .local v3, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v5, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    add-float v25, v6, v5

    .line 642
    .end local v6    # "totalWeight":F
    .local v25, "totalWeight":F
    if-ne v10, v7, :cond_3

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-nez v5, :cond_3

    iget v5, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v5, v5, v21

    if-lez v5, :cond_3

    .line 646
    iget v5, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 647
    .local v5, "totalLength":I
    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v6, v5

    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 648
    const/16 v18, 0x1

    .line 649
    .end local v5    # "totalLength":I
    move/from16 v5, p2

    move/from16 v19, v10

    move/from16 v27, v14

    move/from16 v24, v15

    move/from16 v14, v23

    move v10, v4

    move/from16 v23, v8

    move-object v8, v3

    move-object v3, v1

    move/from16 v1, p1

    goto/16 :goto_3

    .line 650
    :cond_3
    const/high16 v5, -0x80000000

    .line 652
    .local v5, "oldHeight":I
    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-nez v6, :cond_4

    iget v6, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v6, v6, v21

    if-lez v6, :cond_4

    .line 657
    const/4 v5, 0x0

    .line 658
    const/4 v6, -0x2

    iput v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move v7, v5

    goto :goto_1

    .line 665
    :cond_4
    move v7, v5

    .end local v5    # "oldHeight":I
    .local v7, "oldHeight":I
    :goto_1
    cmpl-float v5, v25, v21

    if-nez v5, :cond_5

    iget v5, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move v6, v5

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    :goto_2
    move v5, v4

    .end local v4    # "weightedMaxWidth":I
    .local v5, "weightedMaxWidth":I
    const/4 v4, 0x0

    move/from16 v19, v10

    move/from16 v27, v14

    move/from16 v24, v15

    move/from16 v14, v23

    const/high16 v15, -0x80000000

    move v10, v5

    move/from16 v23, v8

    move/from16 v5, p2

    move-object v8, v3

    move/from16 v3, p1

    .end local v3    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v5    # "weightedMaxWidth":I
    .end local v15    # "alternativeMaxWidth":I
    .local v8, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .local v10, "weightedMaxWidth":I
    .local v14, "largestChildHeight":I
    .local v19, "heightMode":I
    .local v23, "count":I
    .local v24, "alternativeMaxWidth":I
    .local v27, "useLargestChild":Z
    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 669
    move/from16 v37, v3

    move-object v3, v1

    move/from16 v1, v37

    .end local v1    # "child":Landroid/view/View;
    .local v3, "child":Landroid/view/View;
    if-eq v7, v15, :cond_6

    .line 670
    iput v7, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 673
    :cond_6
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 674
    .local v4, "childHeight":I
    iget v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 675
    .local v6, "totalLength":I
    add-int v15, v6, v4

    move/from16 v29, v7

    .end local v7    # "oldHeight":I
    .local v29, "oldHeight":I
    iget v7, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v15, v7

    iget v7, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v15, v7

    .line 676
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v7

    add-int/2addr v15, v7

    .line 675
    invoke-static {v6, v15}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 678
    if-eqz v27, :cond_7

    .line 679
    invoke-static {v4, v14}, Ljava/lang/Math;->max(II)I

    move-result v7

    move v14, v7

    .line 687
    .end local v4    # "childHeight":I
    .end local v6    # "totalLength":I
    .end local v29    # "oldHeight":I
    :cond_7
    :goto_3
    if-ltz v13, :cond_8

    add-int/lit8 v4, v2, 0x1

    if-ne v13, v4, :cond_8

    .line 688
    iget v4, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iput v4, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineChildTop:I

    .line 694
    :cond_8
    if-ge v2, v13, :cond_9

    iget v4, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v4, v4, v21

    if-gtz v4, :cond_a

    :cond_9
    goto :goto_4

    .line 695
    :cond_a
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v6, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 701
    :goto_4
    const/4 v4, 0x0

    .line 702
    .local v4, "matchWidthLocally":Z
    const/high16 v6, 0x40000000    # 2.0f

    if-eq v9, v6, :cond_b

    iget v6, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_c

    .line 707
    const/16 v17, 0x1

    .line 708
    const/4 v4, 0x1

    goto :goto_5

    .line 702
    :cond_b
    const/4 v7, -0x1

    .line 711
    :cond_c
    :goto_5
    iget v6, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v15, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v6, v15

    .line 712
    .local v6, "margin":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v6

    .line 713
    .local v15, "measuredWidth":I
    invoke-static {v11, v15}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 714
    nop

    .line 715
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v7

    .line 714
    invoke-static {v12, v7}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v7

    .line 717
    .end local v12    # "childState":I
    .local v7, "childState":I
    if-eqz v16, :cond_d

    iget v12, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move/from16 v26, v4

    const/4 v4, -0x1

    .end local v4    # "matchWidthLocally":Z
    .local v26, "matchWidthLocally":Z
    if-ne v12, v4, :cond_e

    move/from16 v4, v20

    goto :goto_6

    .end local v26    # "matchWidthLocally":Z
    .restart local v4    # "matchWidthLocally":Z
    :cond_d
    move/from16 v26, v4

    .end local v4    # "matchWidthLocally":Z
    .restart local v26    # "matchWidthLocally":Z
    :cond_e
    const/4 v4, 0x0

    .line 718
    .end local v16    # "allFillParent":Z
    .local v4, "allFillParent":Z
    :goto_6
    iget v12, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v12, v12, v21

    if-lez v12, :cond_10

    .line 723
    if-eqz v26, :cond_f

    move v12, v6

    goto :goto_7

    :cond_f
    move v12, v15

    :goto_7
    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    move-result v10

    move/from16 v28, v15

    move/from16 v15, v24

    goto :goto_9

    .line 726
    :cond_10
    if-eqz v26, :cond_11

    move v12, v6

    goto :goto_8

    :cond_11
    move v12, v15

    :goto_8
    move/from16 v28, v15

    move/from16 v15, v24

    .end local v24    # "alternativeMaxWidth":I
    .local v15, "alternativeMaxWidth":I
    .local v28, "measuredWidth":I
    invoke-static {v15, v12}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 730
    :goto_9
    invoke-virtual {v0, v3, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v12

    add-int/2addr v2, v12

    move/from16 v16, v4

    move v12, v7

    move v4, v10

    move/from16 v6, v25

    .line 621
    .end local v3    # "child":Landroid/view/View;
    .end local v7    # "childState":I
    .end local v8    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v10    # "weightedMaxWidth":I
    .end local v25    # "totalWeight":F
    .end local v26    # "matchWidthLocally":Z
    .end local v28    # "measuredWidth":I
    .local v4, "weightedMaxWidth":I
    .local v6, "totalWeight":F
    .restart local v12    # "childState":I
    .restart local v16    # "allFillParent":Z
    :goto_a
    add-int/lit8 v2, v2, 0x1

    move v1, v14

    move/from16 v10, v19

    move/from16 v8, v23

    move/from16 v14, v27

    const/4 v7, 0x0

    goto/16 :goto_0

    .end local v19    # "heightMode":I
    .end local v23    # "count":I
    .end local v27    # "useLargestChild":Z
    .local v1, "largestChildHeight":I
    .local v8, "count":I
    .local v10, "heightMode":I
    .local v14, "useLargestChild":Z
    :cond_12
    move/from16 v5, p2

    move/from16 v23, v8

    move/from16 v19, v10

    move/from16 v27, v14

    move v14, v1

    move v10, v4

    const/high16 v4, -0x80000000

    move/from16 v1, p1

    .line 733
    .end local v1    # "largestChildHeight":I
    .end local v2    # "i":I
    .end local v4    # "weightedMaxWidth":I
    .end local v8    # "count":I
    .local v10, "weightedMaxWidth":I
    .local v14, "largestChildHeight":I
    .restart local v19    # "heightMode":I
    .restart local v23    # "count":I
    .restart local v27    # "useLargestChild":Z
    iget v2, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    if-lez v2, :cond_13

    move/from16 v2, v23

    .end local v23    # "count":I
    .local v2, "count":I
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 734
    iget v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iget v8, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v7, v8

    iput v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_b

    .line 733
    .end local v2    # "count":I
    .restart local v23    # "count":I
    :cond_13
    move/from16 v2, v23

    .line 737
    .end local v23    # "count":I
    .restart local v2    # "count":I
    :cond_14
    :goto_b
    if-eqz v27, :cond_1a

    move/from16 v7, v19

    .end local v19    # "heightMode":I
    .local v7, "heightMode":I
    if-eq v7, v4, :cond_15

    if-nez v7, :cond_16

    :cond_15
    goto :goto_c

    :cond_16
    move/from16 v23, v6

    goto :goto_10

    .line 739
    :goto_c
    const/4 v4, 0x0

    iput v4, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 741
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_d
    if-ge v4, v2, :cond_19

    .line 742
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 744
    .local v8, "child":Landroid/view/View;
    if-nez v8, :cond_17

    .line 745
    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v23

    add-int v3, v3, v23

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 746
    move/from16 v25, v4

    move/from16 v23, v6

    goto :goto_e

    .line 749
    :cond_17
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v3

    move/from16 v23, v6

    const/16 v6, 0x8

    .end local v6    # "totalWeight":F
    .local v23, "totalWeight":F
    if-ne v3, v6, :cond_18

    .line 750
    invoke-virtual {v0, v8, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v4, v3

    .line 751
    goto :goto_f

    .line 754
    :cond_18
    nop

    .line 755
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 757
    .local v3, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v6, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 758
    .local v6, "totalLength":I
    add-int v24, v6, v14

    move/from16 v25, v4

    .end local v4    # "i":I
    .local v25, "i":I
    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v24, v24, v4

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v24, v24, v4

    .line 759
    invoke-virtual {v0, v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int v4, v24, v4

    .line 758
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 741
    .end local v3    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v8    # "child":Landroid/view/View;
    .end local v23    # "totalWeight":F
    .end local v25    # "i":I
    .restart local v4    # "i":I
    .local v6, "totalWeight":F
    :goto_e
    move/from16 v4, v25

    .end local v6    # "totalWeight":F
    .restart local v23    # "totalWeight":F
    :goto_f
    add-int/lit8 v4, v4, 0x1

    move/from16 v6, v23

    const/16 v3, 0x8

    goto :goto_d

    .end local v23    # "totalWeight":F
    .restart local v6    # "totalWeight":F
    :cond_19
    move/from16 v25, v4

    move/from16 v23, v6

    .end local v4    # "i":I
    .end local v6    # "totalWeight":F
    .restart local v23    # "totalWeight":F
    .restart local v25    # "i":I
    goto :goto_10

    .line 737
    .end local v7    # "heightMode":I
    .end local v23    # "totalWeight":F
    .end local v25    # "i":I
    .restart local v6    # "totalWeight":F
    .restart local v19    # "heightMode":I
    :cond_1a
    move/from16 v23, v6

    move/from16 v7, v19

    .line 764
    .end local v6    # "totalWeight":F
    .end local v19    # "heightMode":I
    .restart local v7    # "heightMode":I
    .restart local v23    # "totalWeight":F
    :goto_10
    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    add-int/2addr v4, v6

    add-int/2addr v3, v4

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 766
    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 769
    .local v3, "heightSize":I
    invoke-virtual {v0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 772
    const/4 v4, 0x0

    invoke-static {v3, v5, v4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v6

    .line 773
    .local v6, "heightSizeAndState":I
    const v4, 0xffffff

    and-int v3, v6, v4

    .line 778
    iget v4, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int v4, v3, v4

    .line 779
    .local v4, "delta":I
    if-nez v18, :cond_21

    if-eqz v4, :cond_1b

    cmpl-float v8, v23, v21

    if-lez v8, :cond_1b

    move/from16 v24, v3

    move/from16 v25, v4

    move/from16 v29, v10

    goto/16 :goto_14

    .line 851
    :cond_1b
    invoke-static {v15, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 857
    .end local v15    # "alternativeMaxWidth":I
    .local v8, "alternativeMaxWidth":I
    if-eqz v27, :cond_20

    const/high16 v15, 0x40000000    # 2.0f

    if-eq v7, v15, :cond_20

    .line 858
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_11
    if-ge v15, v2, :cond_1f

    .line 859
    move/from16 v24, v3

    .end local v3    # "heightSize":I
    .local v24, "heightSize":I
    invoke-virtual {v0, v15}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 861
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_1e

    move/from16 v25, v4

    .end local v4    # "delta":I
    .local v25, "delta":I
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    move/from16 v20, v8

    const/16 v8, 0x8

    .end local v8    # "alternativeMaxWidth":I
    .local v20, "alternativeMaxWidth":I
    if-ne v4, v8, :cond_1c

    .line 862
    move/from16 v29, v10

    goto :goto_12

    .line 865
    :cond_1c
    nop

    .line 866
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 868
    .local v4, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v8, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 869
    .local v8, "childExtra":F
    cmpl-float v22, v8, v21

    if-lez v22, :cond_1d

    .line 870
    nop

    .line 871
    move-object/from16 v22, v4

    .end local v4    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .local v22, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    move/from16 v28, v8

    const/high16 v8, 0x40000000    # 2.0f

    .end local v8    # "childExtra":F
    .local v28, "childExtra":F
    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 873
    move/from16 v29, v10

    .end local v10    # "weightedMaxWidth":I
    .local v29, "weightedMaxWidth":I
    invoke-static {v14, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 870
    invoke-virtual {v3, v4, v10}, Landroid/view/View;->measure(II)V

    goto :goto_12

    .line 869
    .end local v22    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v28    # "childExtra":F
    .end local v29    # "weightedMaxWidth":I
    .restart local v4    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .restart local v8    # "childExtra":F
    .restart local v10    # "weightedMaxWidth":I
    :cond_1d
    move-object/from16 v22, v4

    move/from16 v28, v8

    move/from16 v29, v10

    .end local v4    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v8    # "childExtra":F
    .end local v10    # "weightedMaxWidth":I
    .restart local v22    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .restart local v28    # "childExtra":F
    .restart local v29    # "weightedMaxWidth":I
    goto :goto_12

    .line 861
    .end local v20    # "alternativeMaxWidth":I
    .end local v22    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v25    # "delta":I
    .end local v28    # "childExtra":F
    .end local v29    # "weightedMaxWidth":I
    .local v4, "delta":I
    .local v8, "alternativeMaxWidth":I
    .restart local v10    # "weightedMaxWidth":I
    :cond_1e
    move/from16 v25, v4

    move/from16 v20, v8

    move/from16 v29, v10

    .line 858
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "delta":I
    .end local v8    # "alternativeMaxWidth":I
    .end local v10    # "weightedMaxWidth":I
    .restart local v20    # "alternativeMaxWidth":I
    .restart local v25    # "delta":I
    .restart local v29    # "weightedMaxWidth":I
    :goto_12
    add-int/lit8 v15, v15, 0x1

    move/from16 v8, v20

    move/from16 v3, v24

    move/from16 v4, v25

    move/from16 v10, v29

    goto :goto_11

    .end local v20    # "alternativeMaxWidth":I
    .end local v24    # "heightSize":I
    .end local v25    # "delta":I
    .end local v29    # "weightedMaxWidth":I
    .local v3, "heightSize":I
    .restart local v4    # "delta":I
    .restart local v8    # "alternativeMaxWidth":I
    .restart local v10    # "weightedMaxWidth":I
    :cond_1f
    move/from16 v24, v3

    move/from16 v25, v4

    move/from16 v20, v8

    move/from16 v29, v10

    .end local v3    # "heightSize":I
    .end local v4    # "delta":I
    .end local v8    # "alternativeMaxWidth":I
    .end local v10    # "weightedMaxWidth":I
    .restart local v20    # "alternativeMaxWidth":I
    .restart local v24    # "heightSize":I
    .restart local v25    # "delta":I
    .restart local v29    # "weightedMaxWidth":I
    goto :goto_13

    .line 857
    .end local v15    # "i":I
    .end local v20    # "alternativeMaxWidth":I
    .end local v24    # "heightSize":I
    .end local v25    # "delta":I
    .end local v29    # "weightedMaxWidth":I
    .restart local v3    # "heightSize":I
    .restart local v4    # "delta":I
    .restart local v8    # "alternativeMaxWidth":I
    .restart local v10    # "weightedMaxWidth":I
    :cond_20
    move/from16 v24, v3

    move/from16 v25, v4

    move/from16 v20, v8

    move/from16 v29, v10

    .line 880
    .end local v3    # "heightSize":I
    .end local v4    # "delta":I
    .end local v8    # "alternativeMaxWidth":I
    .end local v10    # "weightedMaxWidth":I
    .restart local v20    # "alternativeMaxWidth":I
    .restart local v24    # "heightSize":I
    .restart local v25    # "delta":I
    .restart local v29    # "weightedMaxWidth":I
    :goto_13
    move/from16 v34, v7

    move/from16 v35, v13

    move/from16 v8, v20

    move/from16 v4, v25

    goto/16 :goto_1f

    .line 779
    .end local v20    # "alternativeMaxWidth":I
    .end local v24    # "heightSize":I
    .end local v25    # "delta":I
    .end local v29    # "weightedMaxWidth":I
    .restart local v3    # "heightSize":I
    .restart local v4    # "delta":I
    .restart local v10    # "weightedMaxWidth":I
    .local v15, "alternativeMaxWidth":I
    :cond_21
    move/from16 v24, v3

    move/from16 v25, v4

    move/from16 v29, v10

    .line 780
    .end local v3    # "heightSize":I
    .end local v4    # "delta":I
    .end local v10    # "weightedMaxWidth":I
    .restart local v24    # "heightSize":I
    .restart local v25    # "delta":I
    .restart local v29    # "weightedMaxWidth":I
    :goto_14
    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    cmpl-float v3, v3, v21

    if-lez v3, :cond_22

    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    goto :goto_15

    :cond_22
    move/from16 v3, v23

    .line 782
    .local v3, "weightSum":F
    :goto_15
    const/4 v4, 0x0

    iput v4, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 784
    const/4 v8, 0x0

    move v10, v8

    move/from16 v8, v25

    .end local v25    # "delta":I
    .local v8, "delta":I
    .local v10, "i":I
    :goto_16
    if-ge v10, v2, :cond_2e

    .line 785
    invoke-virtual {v0, v10}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 787
    .local v4, "child":Landroid/view/View;
    move/from16 v25, v3

    .end local v3    # "weightSum":F
    .local v25, "weightSum":F
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    move/from16 v30, v10

    const/16 v10, 0x8

    .end local v10    # "i":I
    .local v30, "i":I
    if-ne v3, v10, :cond_23

    .line 788
    move/from16 v34, v7

    move/from16 v35, v13

    move/from16 v3, v25

    goto/16 :goto_1e

    .line 791
    :cond_23
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 793
    .local v3, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v10, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 794
    .local v10, "childExtra":F
    cmpl-float v31, v10, v21

    if-lez v31, :cond_28

    .line 796
    move/from16 v31, v10

    .end local v10    # "childExtra":F
    .local v31, "childExtra":F
    int-to-float v10, v8

    mul-float v10, v10, v31

    div-float v10, v10, v25

    float-to-int v10, v10

    .line 797
    .local v10, "share":I
    sub-float v25, v25, v31

    .line 798
    sub-int/2addr v8, v10

    .line 800
    nop

    .line 801
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v32

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v33

    add-int v32, v32, v33

    move/from16 v33, v8

    .end local v8    # "delta":I
    .local v33, "delta":I
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int v32, v32, v8

    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int v8, v32, v8

    move/from16 v32, v10

    .end local v10    # "share":I
    .local v32, "share":I
    iget v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 800
    invoke-static {v1, v8, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    .line 806
    .local v8, "childWidthMeasureSpec":I
    iget v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-nez v10, :cond_26

    const/high16 v10, 0x40000000    # 2.0f

    if-eq v7, v10, :cond_24

    move/from16 v34, v7

    goto :goto_18

    .line 819
    :cond_24
    move/from16 v34, v7

    if-lez v32, :cond_25

    move/from16 v7, v32

    goto :goto_17

    :cond_25
    const/4 v7, 0x0

    .line 820
    .end local v7    # "heightMode":I
    .local v34, "heightMode":I
    :goto_17
    invoke-static {v7, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 819
    invoke-virtual {v4, v8, v7}, Landroid/view/View;->measure(II)V

    move/from16 v35, v13

    goto :goto_19

    .line 806
    .end local v34    # "heightMode":I
    .restart local v7    # "heightMode":I
    :cond_26
    move/from16 v34, v7

    .line 809
    .end local v7    # "heightMode":I
    .restart local v34    # "heightMode":I
    :goto_18
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int v7, v7, v32

    .line 810
    .local v7, "childHeight":I
    if-gez v7, :cond_27

    .line 811
    const/4 v7, 0x0

    .line 814
    :cond_27
    nop

    .line 815
    move/from16 v35, v13

    const/high16 v10, 0x40000000    # 2.0f

    .end local v13    # "baselineChildIndex":I
    .local v35, "baselineChildIndex":I
    invoke-static {v7, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 814
    invoke-virtual {v4, v8, v13}, Landroid/view/View;->measure(II)V

    .line 816
    .end local v7    # "childHeight":I
    nop

    .line 825
    :goto_19
    nop

    .line 826
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v7

    and-int/lit16 v7, v7, -0x100

    .line 825
    invoke-static {v12, v7}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v12

    move/from16 v8, v33

    goto :goto_1a

    .line 794
    .end local v31    # "childExtra":F
    .end local v32    # "share":I
    .end local v33    # "delta":I
    .end local v34    # "heightMode":I
    .end local v35    # "baselineChildIndex":I
    .local v7, "heightMode":I
    .local v8, "delta":I
    .local v10, "childExtra":F
    .restart local v13    # "baselineChildIndex":I
    :cond_28
    move/from16 v34, v7

    move/from16 v31, v10

    move/from16 v35, v13

    .line 830
    .end local v7    # "heightMode":I
    .end local v10    # "childExtra":F
    .end local v13    # "baselineChildIndex":I
    .restart local v31    # "childExtra":F
    .restart local v34    # "heightMode":I
    .restart local v35    # "baselineChildIndex":I
    :goto_1a
    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v7, v10

    .line 831
    .local v7, "margin":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v7

    .line 832
    .local v10, "measuredWidth":I
    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 834
    const/high16 v13, 0x40000000    # 2.0f

    if-eq v9, v13, :cond_29

    iget v13, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move/from16 v32, v7

    const/4 v7, -0x1

    .end local v7    # "margin":I
    .local v32, "margin":I
    if-ne v13, v7, :cond_2a

    move/from16 v7, v20

    goto :goto_1b

    .end local v32    # "margin":I
    .restart local v7    # "margin":I
    :cond_29
    move/from16 v32, v7

    .end local v7    # "margin":I
    .restart local v32    # "margin":I
    :cond_2a
    const/4 v7, 0x0

    .line 837
    .local v7, "matchWidthLocally":Z
    :goto_1b
    if-eqz v7, :cond_2b

    move/from16 v13, v32

    goto :goto_1c

    :cond_2b
    move v13, v10

    :goto_1c
    invoke-static {v15, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 840
    .end local v15    # "alternativeMaxWidth":I
    .local v13, "alternativeMaxWidth":I
    if-eqz v16, :cond_2c

    iget v15, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move/from16 v33, v7

    const/4 v7, -0x1

    .end local v7    # "matchWidthLocally":Z
    .local v33, "matchWidthLocally":Z
    if-ne v15, v7, :cond_2d

    move/from16 v15, v20

    goto :goto_1d

    .end local v33    # "matchWidthLocally":Z
    .restart local v7    # "matchWidthLocally":Z
    :cond_2c
    move/from16 v33, v7

    const/4 v7, -0x1

    .end local v7    # "matchWidthLocally":Z
    .restart local v33    # "matchWidthLocally":Z
    :cond_2d
    const/4 v15, 0x0

    .line 842
    .end local v16    # "allFillParent":Z
    .local v15, "allFillParent":Z
    :goto_1d
    iget v7, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 843
    .local v7, "totalLength":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v16, v7, v16

    move/from16 v36, v8

    .end local v8    # "delta":I
    .local v36, "delta":I
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v16, v16, v8

    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v16, v16, v8

    .line 844
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v8

    add-int v8, v16, v8

    .line 843
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v16, v15

    move/from16 v8, v36

    move v15, v13

    move/from16 v3, v25

    .line 784
    .end local v4    # "child":Landroid/view/View;
    .end local v7    # "totalLength":I
    .end local v10    # "measuredWidth":I
    .end local v13    # "alternativeMaxWidth":I
    .end local v25    # "weightSum":F
    .end local v31    # "childExtra":F
    .end local v32    # "margin":I
    .end local v33    # "matchWidthLocally":Z
    .end local v36    # "delta":I
    .local v3, "weightSum":F
    .restart local v8    # "delta":I
    .local v15, "alternativeMaxWidth":I
    .restart local v16    # "allFillParent":Z
    :goto_1e
    add-int/lit8 v10, v30, 0x1

    move/from16 v7, v34

    move/from16 v13, v35

    const/4 v4, 0x0

    .end local v30    # "i":I
    .local v10, "i":I
    goto/16 :goto_16

    .end local v34    # "heightMode":I
    .end local v35    # "baselineChildIndex":I
    .local v7, "heightMode":I
    .local v13, "baselineChildIndex":I
    :cond_2e
    move/from16 v25, v3

    move/from16 v34, v7

    move/from16 v30, v10

    move/from16 v35, v13

    .line 848
    .end local v3    # "weightSum":F
    .end local v7    # "heightMode":I
    .end local v10    # "i":I
    .end local v13    # "baselineChildIndex":I
    .restart local v25    # "weightSum":F
    .restart local v34    # "heightMode":I
    .restart local v35    # "baselineChildIndex":I
    iget v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    add-int/2addr v4, v7

    add-int/2addr v3, v4

    iput v3, v0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 850
    .end local v25    # "weightSum":F
    move v4, v8

    move v8, v15

    .line 880
    .end local v15    # "alternativeMaxWidth":I
    .local v4, "delta":I
    .local v8, "alternativeMaxWidth":I
    :goto_1f
    if-nez v16, :cond_2f

    const/high16 v10, 0x40000000    # 2.0f

    if-eq v9, v10, :cond_2f

    .line 881
    move v11, v8

    .line 884
    :cond_2f
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    add-int/2addr v3, v7

    add-int/2addr v11, v3

    .line 887
    invoke-virtual {v0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 889
    .end local v11    # "maxWidth":I
    .local v3, "maxWidth":I
    invoke-static {v3, v1, v12}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v7

    invoke-virtual {v0, v7, v6}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 892
    if-eqz v17, :cond_30

    .line 893
    invoke-direct {v0, v2, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->forceUniformWidth(II)V

    .line 895
    :cond_30
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 287
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 288
    return-void

    .line 291
    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 292
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawDividersVertical(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 294
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    .line 296
    :goto_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1760
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1761
    const-string v0, "androidx.appcompat.widget.LinearLayoutCompat"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 1762
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1766
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1767
    const-string v0, "androidx.appcompat.widget.LinearLayoutCompat"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1768
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 1410
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1411
    invoke-virtual {p0, p2, p3, p4, p5}, Landroidx/appcompat/widget/LinearLayoutCompat;->layoutVertical(IIII)V

    goto :goto_0

    .line 1413
    :cond_0
    invoke-virtual {p0, p2, p3, p4, p5}, Landroidx/appcompat/widget/LinearLayoutCompat;->layoutHorizontal(IIII)V

    .line 1415
    :goto_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 554
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 555
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureVertical(II)V

    goto :goto_0

    .line 557
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureHorizontal(II)V

    .line 559
    :goto_0
    return-void
.end method

.method public setBaselineAligned(Z)V
    .locals 0
    .param p1, "baselineAligned"    # Z

    .line 396
    iput-boolean p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 397
    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .locals 3
    .param p1, "i"    # I

    .line 492
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 496
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 497
    return-void

    .line 493
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "base aligned child index out of range (0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .line 236
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 237
    return-void

    .line 239
    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 240
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 241
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 242
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    goto :goto_0

    .line 244
    :cond_1
    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 245
    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    .line 247
    :goto_0
    if-nez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 248
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 249
    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0
    .param p1, "padding"    # I

    .line 261
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    .line 262
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .line 1683
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    if-eq v0, p1, :cond_2

    .line 1684
    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 1685
    const v0, 0x800003

    or-int/2addr p1, v0

    .line 1688
    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    .line 1689
    or-int/lit8 p1, p1, 0x30

    .line 1692
    :cond_1
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 1693
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 1695
    :cond_2
    return-void
.end method

.method public setHorizontalGravity(I)V
    .locals 3
    .param p1, "horizontalGravity"    # I

    .line 1708
    const v0, 0x800007

    and-int v1, p1, v0

    .line 1709
    .local v1, "gravity":I
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    and-int/2addr v0, v2

    if-eq v0, v1, :cond_0

    .line 1710
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    const v2, -0x800008

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 1711
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 1713
    :cond_0
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 422
    iput-boolean p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 423
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .line 1658
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 1659
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    .line 1660
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 1662
    :cond_0
    return-void
.end method

.method public setShowDividers(I)V
    .locals 1
    .param p1, "showDividers"    # I

    .line 199
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    if-eq p1, v0, :cond_0

    .line 200
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 202
    :cond_0
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    .line 203
    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 2
    .param p1, "verticalGravity"    # I

    .line 1716
    and-int/lit8 v0, p1, 0x70

    .line 1717
    .local v0, "gravity":I
    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    if-eq v1, v0, :cond_0

    .line 1718
    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v1, v1, -0x71

    or-int/2addr v1, v0

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 1719
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 1721
    :cond_0
    return-void
.end method

.method public setWeightSum(F)V
    .locals 1
    .param p1, "weightSum"    # F

    .line 549
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    .line 550
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 207
    const/4 v0, 0x0

    return v0
.end method
