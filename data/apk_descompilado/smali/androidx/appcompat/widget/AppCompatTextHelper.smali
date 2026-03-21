.class public Landroidx/appcompat/widget/AppCompatTextHelper;
.super Ljava/lang/Object;
.source "AppCompatTextHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/AppCompatTextHelper$ApplyTextViewCallback;
    }
.end annotation


# instance fields
.field public mAsyncFontPending:Z

.field public final mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

.field public mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

.field public mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

.field public mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

.field public mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

.field public mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

.field public mDrawableTint:Landroidx/appcompat/widget/TintInfo;

.field public mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

.field public mFontTypeface:Landroid/graphics/Typeface;

.field public mFontWeight:I

.field public mStyle:I

.field public final mView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/TextView;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    .line 75
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 76
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    .line 77
    return-void
.end method

.method public static createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawableManager"    # Landroidx/appcompat/widget/AppCompatDrawableManager;
    .param p2, "drawableId"    # I

    .line 561
    invoke-virtual {p1, p0, p2}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 562
    .local v0, "tintList":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_0

    .line 563
    new-instance v1, Landroidx/appcompat/widget/TintInfo;

    invoke-direct {v1}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    .line 564
    .local v1, "tintInfo":Landroidx/appcompat/widget/TintInfo;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    .line 565
    iput-object v0, v1, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 566
    return-object v1

    .line 568
    .end local v1    # "tintInfo":Landroidx/appcompat/widget/TintInfo;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public final applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "info"    # Landroidx/appcompat/widget/TintInfo;

    .line 554
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 555
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;[I)V

    .line 557
    :cond_0
    return-void
.end method

.method public applyCompoundDrawablesTints()V
    .locals 5

    .line 536
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz v0, :cond_1

    .line 538
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 539
    .local v0, "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    aget-object v3, v0, v2

    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

    invoke-virtual {p0, v3, v4}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 540
    const/4 v3, 0x1

    aget-object v3, v0, v3

    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

    invoke-virtual {p0, v3, v4}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 541
    aget-object v3, v0, v1

    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

    invoke-virtual {p0, v3, v4}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 542
    const/4 v3, 0x3

    aget-object v3, v0, v3

    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

    invoke-virtual {p0, v3, v4}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 544
    .end local v0    # "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    :cond_1
    nop

    .line 545
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz v0, :cond_3

    .line 546
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 547
    .restart local v0    # "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    aget-object v2, v0, v2

    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

    invoke-virtual {p0, v2, v3}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 548
    aget-object v1, v0, v1

    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

    invoke-virtual {p0, v1, v2}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 551
    .end local v0    # "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    :cond_3
    return-void
.end method

.method public autoSizeText()V
    .locals 1

    .line 592
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->autoSizeText()V

    .line 593
    return-void
.end method

.method public getAutoSizeMaxTextSize()I
    .locals 1

    .line 637
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeMaxTextSize()I

    move-result v0

    return v0
.end method

.method public getAutoSizeMinTextSize()I
    .locals 1

    .line 633
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeMinTextSize()I

    move-result v0

    return v0
.end method

.method public getAutoSizeStepGranularity()I
    .locals 1

    .line 629
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeStepGranularity()I

    move-result v0

    return v0
.end method

.method public getAutoSizeTextAvailableSizes()[I
    .locals 1

    .line 641
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeTextAvailableSizes()[I

    move-result-object v0

    return-object v0
.end method

.method public getAutoSizeTextType()I
    .locals 1

    .line 625
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeTextType()I

    move-result v0

    return v0
.end method

.method public getCompoundDrawableTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 646
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    iget-object v0, v0, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCompoundDrawableTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 660
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    iget-object v0, v0, Landroidx/appcompat/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public isAutoSizeEnabled()Z
    .locals 1

    .line 598
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->isAutoSizeEnabled()Z

    move-result v0

    return v0
.end method

.method public loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 30
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    .line 81
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    iget-object v1, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 82
    .local v9, "context":Landroid/content/Context;
    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->get()Landroidx/appcompat/widget/AppCompatDrawableManager;

    move-result-object v10

    .line 85
    .local v10, "drawableManager":Landroidx/appcompat/widget/AppCompatDrawableManager;
    sget-object v1, Landroidx/appcompat/R$styleable;->AppCompatTextHelper:[I

    const/4 v2, 0x0

    invoke-static {v9, v7, v1, v8, v2}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v1

    .line 87
    .local v1, "a":Landroidx/appcompat/widget/TintTypedArray;
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_textAppearance:I

    const/4 v11, -0x1

    invoke-virtual {v1, v3, v11}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v12

    .line 89
    .local v12, "ap":I
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableLeft:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableLeft:I

    .line 91
    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v3

    .line 90
    invoke-static {v9, v10, v3}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    move-result-object v3

    iput-object v3, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

    .line 93
    :cond_0
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableTop:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableTop:I

    .line 95
    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v3

    .line 94
    invoke-static {v9, v10, v3}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    move-result-object v3

    iput-object v3, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

    .line 97
    :cond_1
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableRight:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 98
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableRight:I

    .line 99
    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v3

    .line 98
    invoke-static {v9, v10, v3}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    move-result-object v3

    iput-object v3, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

    .line 101
    :cond_2
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableBottom:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 102
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableBottom:I

    .line 103
    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v3

    .line 102
    invoke-static {v9, v10, v3}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    move-result-object v3

    iput-object v3, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

    .line 106
    :cond_3
    nop

    .line 107
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableStart:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 108
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableStart:I

    .line 109
    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v3

    .line 108
    invoke-static {v9, v10, v3}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    move-result-object v3

    iput-object v3, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

    .line 111
    :cond_4
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableEnd:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 112
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableEnd:I

    .line 113
    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v3

    .line 112
    invoke-static {v9, v10, v3}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    move-result-object v3

    iput-object v3, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

    .line 117
    :cond_5
    invoke-virtual {v1}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 122
    iget-object v3, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 123
    invoke-virtual {v3}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v3

    instance-of v13, v3, Landroid/text/method/PasswordTransformationMethod;

    .line 124
    .local v13, "hasPwdTm":Z
    const/4 v3, 0x0

    .line 125
    .local v3, "allCaps":Z
    const/4 v4, 0x0

    .line 126
    .local v4, "allCapsSet":Z
    const/4 v14, 0x0

    .line 127
    .local v14, "textColor":Landroid/content/res/ColorStateList;
    const/4 v15, 0x0

    .line 128
    .local v15, "textColorHint":Landroid/content/res/ColorStateList;
    const/4 v5, 0x0

    .line 129
    .local v5, "textColorLink":Landroid/content/res/ColorStateList;
    const/4 v6, 0x0

    .line 130
    .local v6, "fontVariation":Ljava/lang/String;
    const/16 v16, 0x0

    .line 133
    .local v16, "localeListString":Ljava/lang/String;
    if-eq v12, v11, :cond_9

    .line 134
    sget-object v11, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {v9, v12, v11}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v1

    .line 135
    if-nez v13, :cond_6

    sget v11, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v1, v11}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 136
    const/4 v4, 0x1

    .line 137
    sget v11, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v1, v11, v2}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 140
    :cond_6
    invoke-virtual {v0, v9, v1}, Landroidx/appcompat/widget/AppCompatTextHelper;->updateTypefaceAndStyle(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V

    .line 141
    nop

    .line 156
    sget v11, Landroidx/appcompat/R$styleable;->TextAppearance_textLocale:I

    invoke-virtual {v1, v11}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 157
    sget v11, Landroidx/appcompat/R$styleable;->TextAppearance_textLocale:I

    invoke-virtual {v1, v11}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 159
    :cond_7
    sget v11, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    .line 160
    invoke-virtual {v1, v11}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 161
    sget v11, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    invoke-virtual {v1, v11}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 163
    :cond_8
    invoke-virtual {v1}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 167
    :cond_9
    sget-object v11, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {v9, v7, v11, v8, v2}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v1

    .line 169
    if-nez v13, :cond_a

    sget v11, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v1, v11}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 170
    const/4 v4, 0x1

    .line 171
    sget v11, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v1, v11, v2}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v3

    move v11, v3

    move/from16 v18, v4

    goto :goto_0

    .line 173
    :cond_a
    move v11, v3

    move/from16 v18, v4

    .end local v3    # "allCaps":Z
    .end local v4    # "allCapsSet":Z
    .local v11, "allCaps":Z
    .local v18, "allCapsSet":Z
    :goto_0
    nop

    .line 188
    sget v3, Landroidx/appcompat/R$styleable;->TextAppearance_textLocale:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 189
    sget v3, Landroidx/appcompat/R$styleable;->TextAppearance_textLocale:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 192
    :cond_b
    sget v3, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    .line 193
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 194
    sget v3, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    goto :goto_1

    .line 197
    :cond_c
    move-object v3, v6

    .end local v6    # "fontVariation":Ljava/lang/String;
    .local v3, "fontVariation":Ljava/lang/String;
    :goto_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    nop

    if-lt v4, v6, :cond_d

    sget v4, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    .line 198
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 199
    sget v4, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    const/4 v6, -0x1

    invoke-virtual {v1, v4, v6}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v4

    if-nez v4, :cond_d

    .line 200
    iget-object v4, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 204
    :cond_d
    invoke-virtual {v0, v9, v1}, Landroidx/appcompat/widget/AppCompatTextHelper;->updateTypefaceAndStyle(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V

    .line 205
    invoke-virtual {v1}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 207
    if-eqz v14, :cond_e

    .line 208
    iget-object v4, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 210
    :cond_e
    if-eqz v15, :cond_f

    .line 211
    iget-object v4, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 213
    :cond_f
    if-eqz v5, :cond_10

    .line 214
    iget-object v4, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 216
    :cond_10
    if-nez v13, :cond_11

    if-eqz v18, :cond_11

    .line 217
    invoke-virtual {v0, v11}, Landroidx/appcompat/widget/AppCompatTextHelper;->setAllCaps(Z)V

    .line 219
    :cond_11
    iget-object v4, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    if-eqz v4, :cond_13

    .line 220
    iget v4, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_12

    .line 221
    iget-object v4, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    iget-object v6, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    iget v2, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {v4, v6, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_2

    .line 223
    :cond_12
    iget-object v2, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    iget-object v4, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 226
    :cond_13
    :goto_2
    if-eqz v3, :cond_14

    .line 227
    iget-object v2, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    .line 229
    :cond_14
    if-eqz v16, :cond_15

    .line 230
    nop

    .line 231
    iget-object v2, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static/range {v16 .. v16}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextLocales(Landroid/os/LocaleList;)V

    .line 239
    :cond_15
    iget-object v2, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v2, v7, v8}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 241
    sget-boolean v2, Landroidx/core/widget/AutoSizeableTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v2, :cond_19

    .line 243
    iget-object v2, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeTextType()I

    move-result v2

    if-eqz v2, :cond_18

    .line 245
    iget-object v2, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    .line 246
    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeTextAvailableSizes()[I

    move-result-object v2

    .line 247
    .local v2, "autoSizeTextSizesInPx":[I
    array-length v4, v2

    if-lez v4, :cond_17

    .line 248
    iget-object v4, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v4

    int-to-float v4, v4

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_16

    .line 251
    iget-object v4, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    iget-object v6, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    .line 252
    invoke-virtual {v6}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeMinTextSize()I

    move-result v6

    move-object/from16 v20, v1

    .end local v1    # "a":Landroidx/appcompat/widget/TintTypedArray;
    .local v20, "a":Landroidx/appcompat/widget/TintTypedArray;
    iget-object v1, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    .line 253
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeMaxTextSize()I

    move-result v1

    move-object/from16 v21, v3

    .end local v3    # "fontVariation":Ljava/lang/String;
    .local v21, "fontVariation":Ljava/lang/String;
    iget-object v3, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    .line 254
    invoke-virtual {v3}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeStepGranularity()I

    move-result v3

    .line 251
    move-object/from16 v22, v5

    const/4 v5, 0x0

    .end local v5    # "textColorLink":Landroid/content/res/ColorStateList;
    .local v22, "textColorLink":Landroid/content/res/ColorStateList;
    invoke-virtual {v4, v6, v1, v3, v5}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_3

    .line 257
    .end local v20    # "a":Landroidx/appcompat/widget/TintTypedArray;
    .end local v21    # "fontVariation":Ljava/lang/String;
    .end local v22    # "textColorLink":Landroid/content/res/ColorStateList;
    .restart local v1    # "a":Landroidx/appcompat/widget/TintTypedArray;
    .restart local v3    # "fontVariation":Ljava/lang/String;
    .restart local v5    # "textColorLink":Landroid/content/res/ColorStateList;
    :cond_16
    move-object/from16 v20, v1

    move-object/from16 v21, v3

    move-object/from16 v22, v5

    const/4 v5, 0x0

    .end local v1    # "a":Landroidx/appcompat/widget/TintTypedArray;
    .end local v3    # "fontVariation":Ljava/lang/String;
    .end local v5    # "textColorLink":Landroid/content/res/ColorStateList;
    .restart local v20    # "a":Landroidx/appcompat/widget/TintTypedArray;
    .restart local v21    # "fontVariation":Ljava/lang/String;
    .restart local v22    # "textColorLink":Landroid/content/res/ColorStateList;
    iget-object v1, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v5}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    goto :goto_3

    .line 247
    .end local v20    # "a":Landroidx/appcompat/widget/TintTypedArray;
    .end local v21    # "fontVariation":Ljava/lang/String;
    .end local v22    # "textColorLink":Landroid/content/res/ColorStateList;
    .restart local v1    # "a":Landroidx/appcompat/widget/TintTypedArray;
    .restart local v3    # "fontVariation":Ljava/lang/String;
    .restart local v5    # "textColorLink":Landroid/content/res/ColorStateList;
    :cond_17
    move-object/from16 v20, v1

    move-object/from16 v21, v3

    move-object/from16 v22, v5

    .end local v1    # "a":Landroidx/appcompat/widget/TintTypedArray;
    .end local v3    # "fontVariation":Ljava/lang/String;
    .end local v5    # "textColorLink":Landroid/content/res/ColorStateList;
    .restart local v20    # "a":Landroidx/appcompat/widget/TintTypedArray;
    .restart local v21    # "fontVariation":Ljava/lang/String;
    .restart local v22    # "textColorLink":Landroid/content/res/ColorStateList;
    goto :goto_3

    .line 243
    .end local v2    # "autoSizeTextSizesInPx":[I
    .end local v20    # "a":Landroidx/appcompat/widget/TintTypedArray;
    .end local v21    # "fontVariation":Ljava/lang/String;
    .end local v22    # "textColorLink":Landroid/content/res/ColorStateList;
    .restart local v1    # "a":Landroidx/appcompat/widget/TintTypedArray;
    .restart local v3    # "fontVariation":Ljava/lang/String;
    .restart local v5    # "textColorLink":Landroid/content/res/ColorStateList;
    :cond_18
    move-object/from16 v20, v1

    move-object/from16 v21, v3

    move-object/from16 v22, v5

    .end local v1    # "a":Landroidx/appcompat/widget/TintTypedArray;
    .end local v3    # "fontVariation":Ljava/lang/String;
    .end local v5    # "textColorLink":Landroid/content/res/ColorStateList;
    .restart local v20    # "a":Landroidx/appcompat/widget/TintTypedArray;
    .restart local v21    # "fontVariation":Ljava/lang/String;
    .restart local v22    # "textColorLink":Landroid/content/res/ColorStateList;
    goto :goto_3

    .line 241
    .end local v20    # "a":Landroidx/appcompat/widget/TintTypedArray;
    .end local v21    # "fontVariation":Ljava/lang/String;
    .end local v22    # "textColorLink":Landroid/content/res/ColorStateList;
    .restart local v1    # "a":Landroidx/appcompat/widget/TintTypedArray;
    .restart local v3    # "fontVariation":Ljava/lang/String;
    .restart local v5    # "textColorLink":Landroid/content/res/ColorStateList;
    :cond_19
    move-object/from16 v20, v1

    move-object/from16 v21, v3

    move-object/from16 v22, v5

    .line 265
    .end local v1    # "a":Landroidx/appcompat/widget/TintTypedArray;
    .end local v3    # "fontVariation":Ljava/lang/String;
    .end local v5    # "textColorLink":Landroid/content/res/ColorStateList;
    .restart local v20    # "a":Landroidx/appcompat/widget/TintTypedArray;
    .restart local v21    # "fontVariation":Ljava/lang/String;
    .restart local v22    # "textColorLink":Landroid/content/res/ColorStateList;
    :goto_3
    sget-object v1, Landroidx/appcompat/R$styleable;->AppCompatTextView:[I

    invoke-static {v9, v7, v1}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v1

    .line 268
    .end local v20    # "a":Landroidx/appcompat/widget/TintTypedArray;
    .restart local v1    # "a":Landroidx/appcompat/widget/TintTypedArray;
    const/4 v2, 0x0

    .local v2, "drawableLeft":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .local v3, "drawableTop":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .line 269
    .local v4, "drawableRight":Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    .local v5, "drawableBottom":Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x0

    .local v6, "drawableStart":Landroid/graphics/drawable/Drawable;
    const/16 v19, 0x0

    .line 270
    .local v19, "drawableEnd":Landroid/graphics/drawable/Drawable;
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableLeftCompat:I

    move-object/from16 v20, v2

    const/4 v2, -0x1

    .end local v2    # "drawableLeft":Landroid/graphics/drawable/Drawable;
    .local v20, "drawableLeft":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    .line 272
    .local v0, "drawableLeftId":I
    if-eq v0, v2, :cond_1a

    .line 273
    invoke-virtual {v10, v9, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v20, v17

    .line 275
    :cond_1a
    move/from16 v23, v0

    .end local v0    # "drawableLeftId":I
    .local v23, "drawableLeftId":I
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTopCompat:I

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    .line 277
    .local v0, "drawableTopId":I
    if-eq v0, v2, :cond_1b

    .line 278
    invoke-virtual {v10, v9, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 280
    :cond_1b
    move/from16 v24, v0

    .end local v0    # "drawableTopId":I
    .local v24, "drawableTopId":I
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableRightCompat:I

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    .line 282
    .local v0, "drawableRightId":I
    if-eq v0, v2, :cond_1c

    .line 283
    invoke-virtual {v10, v9, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 285
    :cond_1c
    move/from16 v25, v0

    .end local v0    # "drawableRightId":I
    .local v25, "drawableRightId":I
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableBottomCompat:I

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    .line 287
    .local v0, "drawableBottomId":I
    if-eq v0, v2, :cond_1d

    .line 288
    invoke-virtual {v10, v9, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 290
    :cond_1d
    move/from16 v26, v0

    .end local v0    # "drawableBottomId":I
    .local v26, "drawableBottomId":I
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableStartCompat:I

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    .line 292
    .local v0, "drawableStartId":I
    if-eq v0, v2, :cond_1e

    .line 293
    invoke-virtual {v10, v9, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 295
    :cond_1e
    move/from16 v27, v0

    .end local v0    # "drawableStartId":I
    .local v27, "drawableStartId":I
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableEndCompat:I

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    .line 297
    .local v0, "drawableEndId":I
    if-eq v0, v2, :cond_1f

    .line 298
    invoke-virtual {v10, v9, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 300
    :cond_1f
    move-object v7, v1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object/from16 v6, v19

    move-object/from16 v1, v20

    move/from16 v19, v0

    move-object/from16 v0, p0

    .end local v0    # "drawableEndId":I
    .end local v20    # "drawableLeft":Landroid/graphics/drawable/Drawable;
    .local v1, "drawableLeft":Landroid/graphics/drawable/Drawable;
    .local v2, "drawableTop":Landroid/graphics/drawable/Drawable;
    .local v3, "drawableRight":Landroid/graphics/drawable/Drawable;
    .local v4, "drawableBottom":Landroid/graphics/drawable/Drawable;
    .local v5, "drawableStart":Landroid/graphics/drawable/Drawable;
    .local v6, "drawableEnd":Landroid/graphics/drawable/Drawable;
    .local v7, "a":Landroidx/appcompat/widget/TintTypedArray;
    .local v19, "drawableEndId":I
    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/AppCompatTextHelper;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 303
    nop

    .end local v1    # "drawableLeft":Landroid/graphics/drawable/Drawable;
    .restart local v20    # "drawableLeft":Landroid/graphics/drawable/Drawable;
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTint:I

    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 304
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTint:I

    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 306
    .local v1, "tintList":Landroid/content/res/ColorStateList;
    move-object/from16 v28, v2

    .end local v2    # "drawableTop":Landroid/graphics/drawable/Drawable;
    .local v28, "drawableTop":Landroid/graphics/drawable/Drawable;
    iget-object v2, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v2, v1}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawableTintList(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    goto :goto_4

    .line 303
    .end local v1    # "tintList":Landroid/content/res/ColorStateList;
    .end local v28    # "drawableTop":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "drawableTop":Landroid/graphics/drawable/Drawable;
    :cond_20
    move-object/from16 v28, v2

    .line 308
    .end local v2    # "drawableTop":Landroid/graphics/drawable/Drawable;
    .restart local v28    # "drawableTop":Landroid/graphics/drawable/Drawable;
    :goto_4
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTintMode:I

    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 309
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTintMode:I

    .line 310
    const/4 v2, -0x1

    invoke-virtual {v7, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v1

    .line 309
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    .line 311
    .local v1, "tintMode":Landroid/graphics/PorterDuff$Mode;
    iget-object v2, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v2, v1}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawableTintMode(Landroid/widget/TextView;Landroid/graphics/PorterDuff$Mode;)V

    .line 314
    .end local v1    # "tintMode":Landroid/graphics/PorterDuff$Mode;
    :cond_21
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextView_firstBaselineToTopHeight:I

    const/4 v2, -0x1

    invoke-virtual {v7, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 316
    .local v1, "firstBaselineToTopHeight":I
    move-object/from16 v17, v3

    .end local v3    # "drawableRight":Landroid/graphics/drawable/Drawable;
    .local v17, "drawableRight":Landroid/graphics/drawable/Drawable;
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextView_lastBaselineToBottomHeight:I

    invoke-virtual {v7, v3, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 318
    .local v3, "lastBaselineToBottomHeight":I
    move-object/from16 v29, v4

    .end local v4    # "drawableBottom":Landroid/graphics/drawable/Drawable;
    .local v29, "drawableBottom":Landroid/graphics/drawable/Drawable;
    sget v4, Landroidx/appcompat/R$styleable;->AppCompatTextView_lineHeight:I

    invoke-virtual {v7, v4, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 321
    .local v4, "lineHeight":I
    invoke-virtual {v7}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 322
    if-eq v1, v2, :cond_22

    .line 323
    iget-object v2, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v2, v1}, Landroidx/core/widget/TextViewCompat;->setFirstBaselineToTopHeight(Landroid/widget/TextView;I)V

    .line 325
    :cond_22
    const/4 v2, -0x1

    if-eq v3, v2, :cond_23

    .line 326
    iget-object v2, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v2, v3}, Landroidx/core/widget/TextViewCompat;->setLastBaselineToBottomHeight(Landroid/widget/TextView;I)V

    .line 328
    :cond_23
    const/4 v2, -0x1

    if-eq v4, v2, :cond_24

    .line 329
    iget-object v2, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v2, v4}, Landroidx/core/widget/TextViewCompat;->setLineHeight(Landroid/widget/TextView;I)V

    .line 331
    :cond_24
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 574
    sget-boolean v0, Landroidx/core/widget/AutoSizeableTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-nez v0, :cond_0

    .line 575
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextHelper;->autoSizeText()V

    .line 577
    :cond_0
    return-void
.end method

.method public onSetCompoundDrawables()V
    .locals 0

    .line 532
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    .line 533
    return-void
.end method

.method public onSetTextAppearance(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 485
    sget-object v0, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    .line 487
    .local v0, "a":Landroidx/appcompat/widget/TintTypedArray;
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 492
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/AppCompatTextHelper;->setAllCaps(Z)V

    .line 494
    :cond_0
    nop

    .line 505
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 506
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    if-nez v1, :cond_1

    .line 507
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 511
    :cond_1
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatTextHelper;->updateTypefaceAndStyle(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V

    .line 513
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    .line 514
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 515
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 517
    .local v1, "fontVariation":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 518
    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    .line 521
    .end local v1    # "fontVariation":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 522
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_3

    .line 523
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    iget v3, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 525
    :cond_3
    return-void
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 347
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 348
    return-void
.end method

.method public setAllCaps(Z)V
    .locals 1
    .param p1, "allCaps"    # Z

    .line 528
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 529
    return-void
.end method

.method public setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    .locals 1
    .param p1, "autoSizeMinTextSize"    # I
    .param p2, "autoSizeMaxTextSize"    # I
    .param p3, "autoSizeStepGranularity"    # I
    .param p4, "unit"    # I

    .line 614
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    .line 616
    return-void
.end method

.method public setAutoSizeTextTypeUniformWithPresetSizes([II)V
    .locals 1
    .param p1, "presetSizes"    # [I
    .param p2, "unit"    # I

    .line 620
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    .line 621
    return-void
.end method

.method public setAutoSizeTextTypeWithDefaults(I)V
    .locals 1
    .param p1, "autoSizeTextType"    # I

    .line 606
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setAutoSizeTextTypeWithDefaults(I)V

    .line 607
    return-void
.end method

.method public setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;

    .line 650
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_0

    .line 651
    new-instance v0, Landroidx/appcompat/widget/TintInfo;

    invoke-direct {v0}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    .line 653
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    iput-object p1, v0, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 654
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    .line 655
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextHelper;->setCompoundTints()V

    .line 656
    return-void
.end method

.method public setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 664
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_0

    .line 665
    new-instance v0, Landroidx/appcompat/widget/TintInfo;

    invoke-direct {v0}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    .line 667
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    iput-object p1, v0, Landroidx/appcompat/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 668
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    .line 669
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextHelper;->setCompoundTints()V

    .line 670
    return-void
.end method

.method public final setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1, "drawableLeft"    # Landroid/graphics/drawable/Drawable;
    .param p2, "drawableTop"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRight"    # Landroid/graphics/drawable/Drawable;
    .param p4, "drawableBottom"    # Landroid/graphics/drawable/Drawable;
    .param p5, "drawableStart"    # Landroid/graphics/drawable/Drawable;
    .param p6, "drawableEnd"    # Landroid/graphics/drawable/Drawable;

    .line 685
    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez p5, :cond_0

    if-eqz p6, :cond_1

    :cond_0
    goto/16 :goto_9

    .line 693
    :cond_1
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    if-nez p3, :cond_2

    if-eqz p4, :cond_3

    :cond_2
    goto :goto_1

    :cond_3
    :goto_0
    goto/16 :goto_e

    .line 696
    :goto_1
    nop

    .line 697
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 698
    .local v4, "existingRel":[Landroid/graphics/drawable/Drawable;
    aget-object v5, v4, v3

    if-nez v5, :cond_4

    aget-object v5, v4, v2

    if-eqz v5, :cond_5

    :cond_4
    goto :goto_6

    .line 709
    .end local v4    # "existingRel":[Landroid/graphics/drawable/Drawable;
    :cond_5
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 710
    .local v4, "existingAbs":[Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    move-object v3, p1

    goto :goto_2

    :cond_6
    aget-object v3, v4, v3

    :goto_2
    if-eqz p2, :cond_7

    move-object v1, p2

    goto :goto_3

    :cond_7
    aget-object v1, v4, v1

    :goto_3
    if-eqz p3, :cond_8

    move-object v2, p3

    goto :goto_4

    :cond_8
    aget-object v2, v4, v2

    :goto_4
    if-eqz p4, :cond_9

    move-object v0, p4

    goto :goto_5

    :cond_9
    aget-object v0, v4, v0

    :goto_5
    invoke-virtual {v5, v3, v1, v2, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_e

    .line 699
    .local v4, "existingRel":[Landroid/graphics/drawable/Drawable;
    :goto_6
    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    aget-object v3, v4, v3

    if-eqz p2, :cond_a

    move-object v1, p2

    goto :goto_7

    :cond_a
    aget-object v1, v4, v1

    :goto_7
    aget-object v2, v4, v2

    if-eqz p4, :cond_b

    move-object v0, p4

    goto :goto_8

    :cond_b
    aget-object v0, v4, v0

    :goto_8
    invoke-virtual {v5, v3, v1, v2, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 705
    return-void

    .line 686
    .end local v4    # "existingRel":[Landroid/graphics/drawable/Drawable;
    :goto_9
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 687
    .restart local v4    # "existingRel":[Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    if-eqz p5, :cond_c

    move-object v3, p5

    goto :goto_a

    :cond_c
    aget-object v3, v4, v3

    :goto_a
    if-eqz p2, :cond_d

    move-object v1, p2

    goto :goto_b

    :cond_d
    aget-object v1, v4, v1

    :goto_b
    if-eqz p6, :cond_e

    move-object v2, p6

    goto :goto_c

    :cond_e
    aget-object v2, v4, v2

    :goto_c
    if-eqz p4, :cond_f

    move-object v0, p4

    goto :goto_d

    :cond_f
    aget-object v0, v4, v0

    :goto_d
    invoke-virtual {v5, v3, v1, v2, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .end local v4    # "existingRel":[Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 717
    :goto_e
    return-void
.end method

.method public final setCompoundTints()V
    .locals 1

    .line 673
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

    .line 674
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

    .line 675
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

    .line 676
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

    .line 677
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

    .line 678
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

    .line 679
    return-void
.end method

.method public setTextSize(IF)V
    .locals 1
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .line 582
    sget-boolean v0, Landroidx/core/widget/AutoSizeableTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-nez v0, :cond_0

    .line 583
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextHelper;->isAutoSizeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 584
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextHelper;->setTextSizeInternal(IF)V

    .line 587
    :cond_0
    return-void
.end method

.method public final setTextSizeInternal(IF)V
    .locals 1
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .line 602
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setTextSizeInternal(IF)V

    .line 603
    return-void
.end method

.method public setTypefaceByCallback(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 337
    iget-boolean v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAsyncFontPending:Z

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 339
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 341
    :cond_0
    return-void
.end method

.method public final updateTypefaceAndStyle(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "a"    # Landroidx/appcompat/widget/TintTypedArray;

    .line 407
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_textStyle:I

    iget v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 409
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/16 v3, 0x1c

    if-lt v0, v3, :cond_0

    .line 410
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_textFontWeight:I

    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    .line 412
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    if-eq v0, v1, :cond_0

    .line 413
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    and-int/lit8 v0, v0, 0x2

    or-int/2addr v0, v2

    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 417
    :cond_0
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_fontFamily:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    const/4 v4, 0x1

    nop

    if-nez v0, :cond_3

    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_fontFamily:I

    .line 418
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 464
    :cond_1
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_typeface:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 466
    iput-boolean v2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAsyncFontPending:Z

    .line 467
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_typeface:I

    invoke-virtual {p2, v0, v4}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v0

    .line 468
    .local v0, "typefaceIndex":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 478
    :pswitch_0
    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    .line 474
    :pswitch_1
    sget-object v1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 475
    goto :goto_0

    .line 470
    :pswitch_2
    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 471
    nop

    .line 482
    .end local v0    # "typefaceIndex":I
    :cond_2
    :goto_0
    return-void

    .line 419
    :cond_3
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 420
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_fontFamily:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_fontFamily:I

    goto :goto_2

    :cond_4
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_fontFamily:I

    .line 423
    .local v0, "fontFamilyId":I
    :goto_2
    iget v5, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    .line 424
    .local v5, "fontWeight":I
    iget v6, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 425
    .local v6, "style":I
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result v7

    if-nez v7, :cond_9

    .line 426
    new-instance v7, Landroidx/appcompat/widget/AppCompatTextHelper$ApplyTextViewCallback;

    invoke-direct {v7, p0, v5, v6}, Landroidx/appcompat/widget/AppCompatTextHelper$ApplyTextViewCallback;-><init>(Landroidx/appcompat/widget/AppCompatTextHelper;II)V

    .line 430
    .local v7, "replyCallback":Landroidx/core/content/res/ResourcesCompat$FontCallback;
    :try_start_0
    iget v8, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {p2, v0, v8, v7}, Landroidx/appcompat/widget/TintTypedArray;->getFont(IILandroidx/core/content/res/ResourcesCompat$FontCallback;)Landroid/graphics/Typeface;

    move-result-object v8

    .line 431
    .local v8, "typeface":Landroid/graphics/Typeface;
    if-eqz v8, :cond_7

    .line 432
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v9, v3, :cond_6

    iget v9, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    if-eq v9, v1, :cond_6

    .line 434
    nop

    .line 435
    invoke-static {v8, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v9

    iget v10, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    iget v11, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    and-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_5

    move v11, v4

    goto :goto_3

    :cond_5
    move v11, v2

    .line 434
    :goto_3
    invoke-static {v9, v10, v11}, Landroidx/appcompat/widget/AppCompatTextHelper$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v9

    iput-object v9, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    goto :goto_4

    .line 443
    .end local v8    # "typeface":Landroid/graphics/Typeface;
    :catch_0
    move-exception v8

    goto :goto_6

    :catch_1
    move-exception v8

    goto :goto_6

    .line 438
    .restart local v8    # "typeface":Landroid/graphics/Typeface;
    :cond_6
    iput-object v8, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 442
    :cond_7
    :goto_4
    iget-object v9, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    if-nez v9, :cond_8

    move v9, v4

    goto :goto_5

    :cond_8
    move v9, v2

    :goto_5
    iput-boolean v9, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAsyncFontPending:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    .end local v8    # "typeface":Landroid/graphics/Typeface;
    nop

    .line 447
    .end local v7    # "replyCallback":Landroidx/core/content/res/ResourcesCompat$FontCallback;
    :cond_9
    :goto_6
    iget-object v7, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    if-nez v7, :cond_c

    .line 449
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 450
    .local v7, "fontFamilyName":Ljava/lang/String;
    if-eqz v7, :cond_c

    .line 451
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v3, :cond_b

    iget v3, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    if-eq v3, v1, :cond_b

    .line 453
    nop

    .line 454
    invoke-static {v7, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    iget v3, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    iget v8, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_a

    move v2, v4

    .line 453
    :cond_a
    invoke-static {v1, v3, v2}, Landroidx/appcompat/widget/AppCompatTextHelper$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    goto :goto_7

    .line 457
    :cond_b
    iget v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    invoke-static {v7, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 461
    .end local v7    # "fontFamilyName":Ljava/lang/String;
    :cond_c
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
