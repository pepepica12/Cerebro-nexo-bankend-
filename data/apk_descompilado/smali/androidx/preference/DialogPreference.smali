.class public abstract Landroidx/preference/DialogPreference;
.super Landroidx/preference/Preference;
.source "DialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/DialogPreference$TargetFragment;
    }
.end annotation


# instance fields
.field public mDialogIcon:Landroid/graphics/drawable/Drawable;

.field public mDialogLayoutResId:I

.field public mDialogMessage:Ljava/lang/CharSequence;

.field public mDialogTitle:Ljava/lang/CharSequence;

.field public mNegativeButtonText:Ljava/lang/CharSequence;

.field public mPositiveButtonText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 93
    sget v0, Landroidx/preference/R$attr;->dialogPreferenceStyle:I

    const v1, 0x1010091

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 55
    sget-object v0, Landroidx/preference/R$styleable;->DialogPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 58
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroidx/preference/R$styleable;->DialogPreference_dialogTitle:I

    sget v2, Landroidx/preference/R$styleable;->DialogPreference_android_dialogTitle:I

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroidx/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 60
    iget-object v1, p0, Landroidx/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    .line 63
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroidx/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 66
    :cond_0
    sget v1, Landroidx/preference/R$styleable;->DialogPreference_dialogMessage:I

    sget v2, Landroidx/preference/R$styleable;->DialogPreference_android_dialogMessage:I

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroidx/preference/DialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    .line 69
    sget v1, Landroidx/preference/R$styleable;->DialogPreference_dialogIcon:I

    sget v2, Landroidx/preference/R$styleable;->DialogPreference_android_dialogIcon:I

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/TypedArrayUtils;->getDrawable(Landroid/content/res/TypedArray;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroidx/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 72
    sget v1, Landroidx/preference/R$styleable;->DialogPreference_positiveButtonText:I

    sget v2, Landroidx/preference/R$styleable;->DialogPreference_android_positiveButtonText:I

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroidx/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 76
    sget v1, Landroidx/preference/R$styleable;->DialogPreference_negativeButtonText:I

    sget v2, Landroidx/preference/R$styleable;->DialogPreference_android_negativeButtonText:I

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroidx/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 80
    sget v1, Landroidx/preference/R$styleable;->DialogPreference_dialogLayout:I

    sget v2, Landroidx/preference/R$styleable;->DialogPreference_android_dialogLayout:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/core/content/res/TypedArrayUtils;->getResourceId(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroidx/preference/DialogPreference;->mDialogLayoutResId:I

    .line 84
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    return-void
.end method


# virtual methods
.method public getDialogIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 185
    iget-object v0, p0, Landroidx/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDialogLayoutResource()I
    .locals 1

    .line 259
    iget v0, p0, Landroidx/preference/DialogPreference;->mDialogLayoutResId:I

    return v0
.end method

.method public getDialogMessage()Ljava/lang/CharSequence;
    .locals 1

    .line 157
    iget-object v0, p0, Landroidx/preference/DialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDialogTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 125
    iget-object v0, p0, Landroidx/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getNegativeButtonText()Ljava/lang/CharSequence;
    .locals 1

    .line 239
    iget-object v0, p0, Landroidx/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPositiveButtonText()Ljava/lang/CharSequence;
    .locals 1

    .line 212
    iget-object v0, p0, Landroidx/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public onClick()V
    .locals 1

    .line 264
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceManager;->showDialog(Landroidx/preference/Preference;)V

    .line 265
    return-void
.end method
