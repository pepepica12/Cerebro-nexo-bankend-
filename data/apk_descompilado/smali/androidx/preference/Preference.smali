.class public Landroidx/preference/Preference;
.super Ljava/lang/Object;
.source "Preference.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/Preference$OnPreferenceCopyListener;,
        Landroidx/preference/Preference$BaseSavedState;,
        Landroidx/preference/Preference$SummaryProvider;,
        Landroidx/preference/Preference$OnPreferenceChangeInternalListener;,
        Landroidx/preference/Preference$OnPreferenceClickListener;,
        Landroidx/preference/Preference$OnPreferenceChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/preference/Preference;",
        ">;"
    }
.end annotation


# instance fields
.field public mAllowDividerAbove:Z

.field public mAllowDividerBelow:Z

.field public mBaseMethodCalled:Z

.field public final mClickListener:Landroid/view/View$OnClickListener;

.field public final mContext:Landroid/content/Context;

.field public mCopyingEnabled:Z

.field public mDefaultValue:Ljava/lang/Object;

.field public mDependencyKey:Ljava/lang/String;

.field public mDependencyMet:Z

.field public mDependents:Ljava/util/List;

.field public mEnabled:Z

.field public mExtras:Landroid/os/Bundle;

.field public mFragment:Ljava/lang/String;

.field public mHasId:Z

.field public mHasSingleLineTitleAttr:Z

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconResId:I

.field public mIconSpaceReserved:Z

.field public mId:J

.field public mIntent:Landroid/content/Intent;

.field public mKey:Ljava/lang/String;

.field public mLayoutResId:I

.field public mListener:Landroidx/preference/Preference$OnPreferenceChangeInternalListener;

.field public mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

.field public mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

.field public mOnCopyListener:Landroidx/preference/Preference$OnPreferenceCopyListener;

.field public mOrder:I

.field public mParentDependencyMet:Z

.field public mParentGroup:Landroidx/preference/PreferenceGroup;

.field public mPersistent:Z

.field public mPreferenceDataStore:Landroidx/preference/PreferenceDataStore;

.field public mPreferenceManager:Landroidx/preference/PreferenceManager;

.field public mSelectable:Z

.field public mShouldDisableView:Z

.field public mSingleLineTitle:Z

.field public mSummary:Ljava/lang/CharSequence;

.field public mSummaryProvider:Landroidx/preference/Preference$SummaryProvider;

.field public mTitle:Ljava/lang/CharSequence;

.field public mViewId:I

.field public mVisible:Z

.field public mWasDetached:Z

.field public mWidgetLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 325
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 326
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 314
    sget v0, Landroidx/preference/R$attr;->preferenceStyle:I

    const v1, 0x101008e

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 316
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 299
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 300
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const v0, 0x7fffffff

    iput v0, p0, Landroidx/preference/Preference;->mOrder:I

    .line 129
    const/4 v1, 0x0

    iput v1, p0, Landroidx/preference/Preference;->mViewId:I

    .line 142
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/preference/Preference;->mEnabled:Z

    .line 143
    iput-boolean v2, p0, Landroidx/preference/Preference;->mSelectable:Z

    .line 145
    iput-boolean v2, p0, Landroidx/preference/Preference;->mPersistent:Z

    .line 148
    iput-boolean v2, p0, Landroidx/preference/Preference;->mDependencyMet:Z

    .line 149
    iput-boolean v2, p0, Landroidx/preference/Preference;->mParentDependencyMet:Z

    .line 150
    iput-boolean v2, p0, Landroidx/preference/Preference;->mVisible:Z

    .line 152
    iput-boolean v2, p0, Landroidx/preference/Preference;->mAllowDividerAbove:Z

    .line 153
    iput-boolean v2, p0, Landroidx/preference/Preference;->mAllowDividerBelow:Z

    .line 155
    iput-boolean v2, p0, Landroidx/preference/Preference;->mSingleLineTitle:Z

    .line 162
    iput-boolean v2, p0, Landroidx/preference/Preference;->mShouldDisableView:Z

    .line 164
    sget v3, Landroidx/preference/R$layout;->preference:I

    iput v3, p0, Landroidx/preference/Preference;->mLayoutResId:I

    .line 179
    new-instance v3, Landroidx/preference/Preference$1;

    invoke-direct {v3, p0}, Landroidx/preference/Preference$1;-><init>(Landroidx/preference/Preference;)V

    iput-object v3, p0, Landroidx/preference/Preference;->mClickListener:Landroid/view/View$OnClickListener;

    .line 207
    iput-object p1, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 209
    sget-object v3, Landroidx/preference/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 212
    .local v3, "a":Landroid/content/res/TypedArray;
    sget v4, Landroidx/preference/R$styleable;->Preference_icon:I

    sget v5, Landroidx/preference/R$styleable;->Preference_android_icon:I

    invoke-static {v3, v4, v5, v1}, Landroidx/core/content/res/TypedArrayUtils;->getResourceId(Landroid/content/res/TypedArray;III)I

    move-result v4

    iput v4, p0, Landroidx/preference/Preference;->mIconResId:I

    .line 215
    sget v4, Landroidx/preference/R$styleable;->Preference_key:I

    sget v5, Landroidx/preference/R$styleable;->Preference_android_key:I

    invoke-static {v3, v4, v5}, Landroidx/core/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    .line 218
    sget v4, Landroidx/preference/R$styleable;->Preference_title:I

    sget v5, Landroidx/preference/R$styleable;->Preference_android_title:I

    invoke-static {v3, v4, v5}, Landroidx/core/content/res/TypedArrayUtils;->getText(Landroid/content/res/TypedArray;II)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    .line 221
    sget v4, Landroidx/preference/R$styleable;->Preference_summary:I

    sget v5, Landroidx/preference/R$styleable;->Preference_android_summary:I

    invoke-static {v3, v4, v5}, Landroidx/core/content/res/TypedArrayUtils;->getText(Landroid/content/res/TypedArray;II)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Landroidx/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    .line 224
    sget v4, Landroidx/preference/R$styleable;->Preference_order:I

    sget v5, Landroidx/preference/R$styleable;->Preference_android_order:I

    invoke-static {v3, v4, v5, v0}, Landroidx/core/content/res/TypedArrayUtils;->getInt(Landroid/content/res/TypedArray;III)I

    move-result v0

    iput v0, p0, Landroidx/preference/Preference;->mOrder:I

    .line 227
    sget v0, Landroidx/preference/R$styleable;->Preference_fragment:I

    sget v4, Landroidx/preference/R$styleable;->Preference_android_fragment:I

    invoke-static {v3, v0, v4}, Landroidx/core/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/Preference;->mFragment:Ljava/lang/String;

    .line 230
    sget v0, Landroidx/preference/R$styleable;->Preference_layout:I

    sget v4, Landroidx/preference/R$styleable;->Preference_android_layout:I

    sget v5, Landroidx/preference/R$layout;->preference:I

    invoke-static {v3, v0, v4, v5}, Landroidx/core/content/res/TypedArrayUtils;->getResourceId(Landroid/content/res/TypedArray;III)I

    move-result v0

    iput v0, p0, Landroidx/preference/Preference;->mLayoutResId:I

    .line 233
    sget v0, Landroidx/preference/R$styleable;->Preference_widgetLayout:I

    sget v4, Landroidx/preference/R$styleable;->Preference_android_widgetLayout:I

    invoke-static {v3, v0, v4, v1}, Landroidx/core/content/res/TypedArrayUtils;->getResourceId(Landroid/content/res/TypedArray;III)I

    move-result v0

    iput v0, p0, Landroidx/preference/Preference;->mWidgetLayoutResId:I

    .line 236
    sget v0, Landroidx/preference/R$styleable;->Preference_enabled:I

    sget v4, Landroidx/preference/R$styleable;->Preference_android_enabled:I

    invoke-static {v3, v0, v4, v2}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/preference/Preference;->mEnabled:Z

    .line 239
    sget v0, Landroidx/preference/R$styleable;->Preference_selectable:I

    sget v4, Landroidx/preference/R$styleable;->Preference_android_selectable:I

    invoke-static {v3, v0, v4, v2}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/preference/Preference;->mSelectable:Z

    .line 242
    sget v0, Landroidx/preference/R$styleable;->Preference_persistent:I

    sget v4, Landroidx/preference/R$styleable;->Preference_android_persistent:I

    invoke-static {v3, v0, v4, v2}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/preference/Preference;->mPersistent:Z

    .line 245
    sget v0, Landroidx/preference/R$styleable;->Preference_dependency:I

    sget v4, Landroidx/preference/R$styleable;->Preference_android_dependency:I

    invoke-static {v3, v0, v4}, Landroidx/core/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    .line 248
    sget v0, Landroidx/preference/R$styleable;->Preference_allowDividerAbove:I

    sget v4, Landroidx/preference/R$styleable;->Preference_allowDividerAbove:I

    iget-boolean v5, p0, Landroidx/preference/Preference;->mSelectable:Z

    invoke-static {v3, v0, v4, v5}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/preference/Preference;->mAllowDividerAbove:Z

    .line 251
    sget v0, Landroidx/preference/R$styleable;->Preference_allowDividerBelow:I

    sget v4, Landroidx/preference/R$styleable;->Preference_allowDividerBelow:I

    iget-boolean v5, p0, Landroidx/preference/Preference;->mSelectable:Z

    invoke-static {v3, v0, v4, v5}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/preference/Preference;->mAllowDividerBelow:Z

    .line 254
    sget v0, Landroidx/preference/R$styleable;->Preference_defaultValue:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    sget v0, Landroidx/preference/R$styleable;->Preference_defaultValue:I

    invoke-virtual {p0, v3, v0}, Landroidx/preference/Preference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    goto :goto_0

    .line 256
    :cond_0
    sget v0, Landroidx/preference/R$styleable;->Preference_android_defaultValue:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    sget v0, Landroidx/preference/R$styleable;->Preference_android_defaultValue:I

    invoke-virtual {p0, v3, v0}, Landroidx/preference/Preference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    .line 260
    :cond_1
    :goto_0
    sget v0, Landroidx/preference/R$styleable;->Preference_shouldDisableView:I

    sget v4, Landroidx/preference/R$styleable;->Preference_android_shouldDisableView:I

    .line 261
    invoke-static {v3, v0, v4, v2}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/preference/Preference;->mShouldDisableView:Z

    .line 264
    sget v0, Landroidx/preference/R$styleable;->Preference_singleLineTitle:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/preference/Preference;->mHasSingleLineTitleAttr:Z

    .line 265
    iget-boolean v0, p0, Landroidx/preference/Preference;->mHasSingleLineTitleAttr:Z

    if-eqz v0, :cond_2

    .line 266
    sget v0, Landroidx/preference/R$styleable;->Preference_singleLineTitle:I

    sget v4, Landroidx/preference/R$styleable;->Preference_android_singleLineTitle:I

    invoke-static {v3, v0, v4, v2}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/preference/Preference;->mSingleLineTitle:Z

    .line 270
    :cond_2
    sget v0, Landroidx/preference/R$styleable;->Preference_iconSpaceReserved:I

    sget v4, Landroidx/preference/R$styleable;->Preference_android_iconSpaceReserved:I

    invoke-static {v3, v0, v4, v1}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/preference/Preference;->mIconSpaceReserved:Z

    .line 273
    sget v0, Landroidx/preference/R$styleable;->Preference_isPreferenceVisible:I

    sget v4, Landroidx/preference/R$styleable;->Preference_isPreferenceVisible:I

    invoke-static {v3, v0, v4, v2}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/preference/Preference;->mVisible:Z

    .line 276
    sget v0, Landroidx/preference/R$styleable;->Preference_enableCopying:I

    sget v2, Landroidx/preference/R$styleable;->Preference_enableCopying:I

    invoke-static {v3, v0, v2, v1}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/preference/Preference;->mCopyingEnabled:Z

    .line 279
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 280
    return-void
.end method


# virtual methods
.method public assignParent(Landroidx/preference/PreferenceGroup;)V
    .locals 2
    .param p1, "parentGroup"    # Landroidx/preference/PreferenceGroup;

    .line 1360
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/preference/Preference;->mParentGroup:Landroidx/preference/PreferenceGroup;

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    .line 1361
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This preference already has a parent. You must remove the existing parent before assigning a new one."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1365
    :goto_0
    iput-object p1, p0, Landroidx/preference/Preference;->mParentGroup:Landroidx/preference/PreferenceGroup;

    .line 1366
    return-void
.end method

.method public callChangeListener(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "newValue"    # Ljava/lang/Object;

    .line 1131
    iget-object v0, p0, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    invoke-interface {v0, p0, p1}, Landroidx/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final clearWasDetached()V
    .locals 1

    .line 1401
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/preference/Preference;->mWasDetached:Z

    .line 1402
    return-void
.end method

.method public compareTo(Landroidx/preference/Preference;)I
    .locals 2
    .param p1, "another"    # Landroidx/preference/Preference;

    .line 1262
    iget v0, p0, Landroidx/preference/Preference;->mOrder:I

    iget v1, p1, Landroidx/preference/Preference;->mOrder:I

    if-eq v0, v1, :cond_0

    .line 1264
    iget v0, p0, Landroidx/preference/Preference;->mOrder:I

    iget v1, p1, Landroidx/preference/Preference;->mOrder:I

    sub-int/2addr v0, v1

    return v0

    .line 1265
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-ne v0, v1, :cond_1

    .line 1267
    const/4 v0, 0x0

    return v0

    .line 1268
    :cond_1
    iget-object v0, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    .line 1269
    const/4 v0, 0x1

    return v0

    .line 1270
    :cond_2
    iget-object v0, p1, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    .line 1271
    const/4 v0, -0x1

    return v0

    .line 1274
    :cond_3
    iget-object v0, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 91
    check-cast p1, Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->compareTo(Landroidx/preference/Preference;)I

    move-result p1

    return p1
.end method

.method public dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    .line 2084
    invoke-virtual {p0}, Landroidx/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2085
    iget-object v0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 2086
    .local v0, "state":Landroid/os/Parcelable;
    if-eqz v0, :cond_1

    .line 2087
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    .line 2088
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2089
    iget-boolean v1, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2090
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2095
    .end local v0    # "state":Landroid/os/Parcelable;
    :cond_1
    :goto_0
    return-void
.end method

.method public dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    .line 2032
    invoke-virtual {p0}, Landroidx/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2033
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    .line 2034
    invoke-virtual {p0}, Landroidx/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2035
    .local v0, "state":Landroid/os/Parcelable;
    iget-boolean v1, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    if-eqz v1, :cond_0

    .line 2039
    if-eqz v0, :cond_1

    .line 2040
    iget-object v1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 2036
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2043
    .end local v0    # "state":Landroid/os/Parcelable;
    :cond_1
    :goto_0
    return-void
.end method

.method public final dispatchSetInitialValue()V
    .locals 4

    .line 1595
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1596
    iget-object v0, p0, Landroidx/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Landroidx/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 1597
    return-void

    .line 1601
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    .line 1602
    .local v0, "shouldPersist":Z
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v3, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    goto :goto_0

    .line 1607
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroidx/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    goto :goto_1

    .line 1603
    :goto_0
    iget-object v1, p0, Landroidx/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 1604
    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Landroidx/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 1609
    :cond_3
    :goto_1
    return-void
.end method

.method public findPreferenceInHierarchy(Ljava/lang/String;)Landroidx/preference/Preference;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 1439
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 1440
    const/4 v0, 0x0

    return-object v0

    .line 1443
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1229
    iget-object v0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 428
    iget-object v0, p0, Landroidx/preference/Preference;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 429
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/preference/Preference;->mExtras:Landroid/os/Bundle;

    .line 431
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFilterableStringBuilder()Ljava/lang/StringBuilder;
    .locals 5

    .line 1995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1996
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1997
    .local v1, "title":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x20

    if-nez v2, :cond_0

    .line 1998
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2000
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    .line 2001
    .local v2, "summary":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2002
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2004
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 2006
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2008
    :cond_2
    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    .line 381
    iget-object v0, p0, Landroidx/preference/Preference;->mFragment:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 933
    iget-wide v0, p0, Landroidx/preference/Preference;->mId:J

    return-wide v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 362
    iget-object v0, p0, Landroidx/preference/Preference;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 965
    iget-object v0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getLayoutResource()I
    .locals 1

    .line 470
    iget v0, p0, Landroidx/preference/Preference;->mLayoutResId:I

    return v0
.end method

.method public getOrder()I
    .locals 1

    .line 646
    iget v0, p0, Landroidx/preference/Preference;->mOrder:I

    return v0
.end method

.method public getParent()Landroidx/preference/PreferenceGroup;
    .locals 1

    .line 1572
    iget-object v0, p0, Landroidx/preference/Preference;->mParentGroup:Landroidx/preference/PreferenceGroup;

    return-object v0
.end method

.method public getPersistedBoolean(Z)Z
    .locals 3
    .param p1, "defaultReturnValue"    # Z

    .line 1966
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1967
    return p1

    .line 1970
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    .line 1971
    .local v0, "dataStore":Landroidx/preference/PreferenceDataStore;
    if-eqz v0, :cond_1

    .line 1972
    iget-object v1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroidx/preference/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1

    .line 1975
    :cond_1
    iget-object v1, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v1}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getPersistedInt(I)I
    .locals 3
    .param p1, "defaultReturnValue"    # I

    .line 1804
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1805
    return p1

    .line 1808
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    .line 1809
    .local v0, "dataStore":Landroidx/preference/PreferenceDataStore;
    if-eqz v0, :cond_1

    .line 1810
    iget-object v1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroidx/preference/PreferenceDataStore;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 1813
    :cond_1
    iget-object v1, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v1}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getPersistedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "defaultReturnValue"    # Ljava/lang/String;

    .line 1697
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1698
    return-object p1

    .line 1701
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    .line 1702
    .local v0, "dataStore":Landroidx/preference/PreferenceDataStore;
    if-eqz v0, :cond_1

    .line 1703
    iget-object v1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroidx/preference/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1706
    :cond_1
    iget-object v1, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v1}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 3

    .line 1750
    .local p1, "defaultReturnValue":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1751
    return-object p1

    .line 1754
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    .line 1755
    .local v0, "dataStore":Landroidx/preference/PreferenceDataStore;
    if-eqz v0, :cond_1

    .line 1756
    iget-object v1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroidx/preference/PreferenceDataStore;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 1759
    :cond_1
    iget-object v1, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v1}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;
    .locals 1

    .line 413
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceDataStore:Landroidx/preference/PreferenceDataStore;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceDataStore:Landroidx/preference/PreferenceDataStore;

    return-object v0

    .line 415
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    if-eqz v0, :cond_1

    .line 416
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    return-object v0

    .line 419
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreferenceManager()Landroidx/preference/PreferenceManager;
    .locals 1

    .line 1314
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .line 1246
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    .line 1250
    :cond_1
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0

    .line 1247
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 745
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummaryProvider()Landroidx/preference/Preference$SummaryProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 746
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummaryProvider()Landroidx/preference/Preference$SummaryProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Landroidx/preference/Preference$SummaryProvider;->provideSummary(Landroidx/preference/Preference;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 748
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getSummaryProvider()Landroidx/preference/Preference$SummaryProvider;
    .locals 1

    .line 1120
    iget-object v0, p0, Landroidx/preference/Preference;->mSummaryProvider:Landroidx/preference/Preference$SummaryProvider;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 691
    iget-object v0, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getWidgetLayoutResource()I
    .locals 1

    .line 494
    iget v0, p0, Landroidx/preference/Preference;->mWidgetLayoutResId:I

    return v0
.end method

.method public hasKey()Z
    .locals 1

    .line 988
    iget-object v0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isCopyingEnabled()Z
    .locals 1

    .line 1094
    iget-boolean v0, p0, Landroidx/preference/Preference;->mCopyingEnabled:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 807
    iget-boolean v0, p0, Landroidx/preference/Preference;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/preference/Preference;->mDependencyMet:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/preference/Preference;->mParentDependencyMet:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPersistent()Z
    .locals 1

    .line 999
    iget-boolean v0, p0, Landroidx/preference/Preference;->mPersistent:Z

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .line 828
    iget-boolean v0, p0, Landroidx/preference/Preference;->mSelectable:Z

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .line 891
    iget-boolean v0, p0, Landroidx/preference/Preference;->mVisible:Z

    return v0
.end method

.method public notifyChanged()V
    .locals 1

    .line 1293
    iget-object v0, p0, Landroidx/preference/Preference;->mListener:Landroidx/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 1294
    iget-object v0, p0, Landroidx/preference/Preference;->mListener:Landroidx/preference/Preference$OnPreferenceChangeInternalListener;

    invoke-interface {v0, p0}, Landroidx/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceChange(Landroidx/preference/Preference;)V

    .line 1296
    :cond_0
    return-void
.end method

.method public notifyDependencyChange(Z)V
    .locals 4
    .param p1, "disableDependents"    # Z

    .line 1483
    iget-object v0, p0, Landroidx/preference/Preference;->mDependents:Ljava/util/List;

    .line 1485
    .local v0, "dependents":Ljava/util/List;, "Ljava/util/List<Landroidx/preference/Preference;>;"
    if-nez v0, :cond_0

    .line 1486
    return-void

    .line 1489
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1490
    .local v1, "dependentsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1491
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/Preference;

    invoke-virtual {v3, p0, p1}, Landroidx/preference/Preference;->onDependencyChanged(Landroidx/preference/Preference;Z)V

    .line 1490
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 1493
    .end local v2    # "i":I
    return-void
.end method

.method public notifyHierarchyChanged()V
    .locals 1

    .line 1303
    iget-object v0, p0, Landroidx/preference/Preference;->mListener:Landroidx/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 1304
    iget-object v0, p0, Landroidx/preference/Preference;->mListener:Landroidx/preference/Preference$OnPreferenceChangeInternalListener;

    invoke-interface {v0, p0}, Landroidx/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceHierarchyChange(Landroidx/preference/Preference;)V

    .line 1306
    :cond_0
    return-void
.end method

.method public onAttached()V
    .locals 0

    .line 1376
    invoke-virtual {p0}, Landroidx/preference/Preference;->registerDependency()V

    .line 1377
    return-void
.end method

.method public onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V
    .locals 2
    .param p1, "preferenceManager"    # Landroidx/preference/PreferenceManager;

    .line 1324
    iput-object p1, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 1326
    iget-boolean v0, p0, Landroidx/preference/Preference;->mHasId:Z

    if-nez v0, :cond_0

    .line 1327
    invoke-virtual {p1}, Landroidx/preference/PreferenceManager;->getNextId()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/preference/Preference;->mId:J

    .line 1330
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->dispatchSetInitialValue()V

    .line 1331
    return-void
.end method

.method public onAttachedToHierarchy(Landroidx/preference/PreferenceManager;J)V
    .locals 2
    .param p1, "preferenceManager"    # Landroidx/preference/PreferenceManager;
    .param p2, "id"    # J

    .line 1342
    iput-wide p2, p0, Landroidx/preference/Preference;->mId:J

    .line 1343
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/preference/Preference;->mHasId:Z

    .line 1345
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1347
    iput-boolean v0, p0, Landroidx/preference/Preference;->mHasId:Z

    .line 1348
    nop

    .line 1349
    return-void

    .line 1347
    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Landroidx/preference/Preference;->mHasId:Z

    .line 1348
    throw v1
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 10
    .param p1, "holder"    # Landroidx/preference/PreferenceViewHolder;

    .line 510
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 511
    .local v0, "itemView":Landroid/view/View;
    const/4 v1, 0x0

    .line 513
    .local v1, "summaryTextColor":Ljava/lang/Integer;
    iget-object v2, p0, Landroidx/preference/Preference;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 514
    iget v2, p0, Landroidx/preference/Preference;->mViewId:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    .line 516
    const v2, 0x1020010

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 517
    .local v2, "summaryView":Landroid/widget/TextView;
    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 518
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v5

    .line 519
    .local v5, "summary":Ljava/lang/CharSequence;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 520
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 522
    invoke-virtual {v2}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 524
    :cond_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 528
    .end local v5    # "summary":Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    const v5, 0x1020016

    invoke-virtual {p1, v5}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 529
    .local v5, "titleView":Landroid/widget/TextView;
    if-eqz v5, :cond_4

    .line 530
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    .line 531
    .local v6, "title":Ljava/lang/CharSequence;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 532
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 534
    iget-boolean v7, p0, Landroidx/preference/Preference;->mHasSingleLineTitleAttr:Z

    if-eqz v7, :cond_2

    .line 535
    iget-boolean v7, p0, Landroidx/preference/Preference;->mSingleLineTitle:Z

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 539
    :cond_2
    invoke-virtual {p0}, Landroidx/preference/Preference;->isSelectable()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v1, :cond_4

    .line 540
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 543
    :cond_3
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 547
    .end local v6    # "title":Ljava/lang/CharSequence;
    :cond_4
    :goto_1
    const v6, 0x1020006

    invoke-virtual {p1, v6}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 548
    .local v6, "imageView":Landroid/widget/ImageView;
    const/4 v7, 0x4

    if-eqz v6, :cond_a

    .line 549
    iget v8, p0, Landroidx/preference/Preference;->mIconResId:I

    if-nez v8, :cond_5

    iget-object v8, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_7

    .line 550
    :cond_5
    iget-object v8, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_6

    .line 551
    iget-object v8, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    iget v9, p0, Landroidx/preference/Preference;->mIconResId:I

    invoke-static {v8, v9}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 553
    :cond_6
    iget-object v8, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_7

    .line 554
    iget-object v8, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 557
    :cond_7
    iget-object v8, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_8

    .line 558
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 560
    :cond_8
    iget-boolean v8, p0, Landroidx/preference/Preference;->mIconSpaceReserved:Z

    if-eqz v8, :cond_9

    move v8, v7

    goto :goto_2

    :cond_9
    move v8, v3

    :goto_2
    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 564
    :cond_a
    :goto_3
    sget v8, Landroidx/preference/R$id;->icon_frame:I

    invoke-virtual {p1, v8}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 565
    .local v8, "imageFrame":Landroid/view/View;
    if-nez v8, :cond_b

    .line 566
    const v9, 0x102003e

    invoke-virtual {p1, v9}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 568
    :cond_b
    if-eqz v8, :cond_e

    .line 569
    iget-object v9, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_c

    .line 570
    invoke-virtual {v8, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 572
    :cond_c
    iget-boolean v4, p0, Landroidx/preference/Preference;->mIconSpaceReserved:Z

    if-eqz v4, :cond_d

    move v3, v7

    :cond_d
    invoke-virtual {v8, v3}, Landroid/view/View;->setVisibility(I)V

    .line 576
    :cond_e
    :goto_4
    iget-boolean v3, p0, Landroidx/preference/Preference;->mShouldDisableView:Z

    if-eqz v3, :cond_f

    .line 577
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v3

    invoke-virtual {p0, v0, v3}, Landroidx/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    goto :goto_5

    .line 579
    :cond_f
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Landroidx/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 582
    :goto_5
    invoke-virtual {p0}, Landroidx/preference/Preference;->isSelectable()Z

    move-result v3

    .line 583
    .local v3, "selectable":Z
    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 584
    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 586
    iget-boolean v4, p0, Landroidx/preference/Preference;->mAllowDividerAbove:Z

    invoke-virtual {p1, v4}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 587
    iget-boolean v4, p0, Landroidx/preference/Preference;->mAllowDividerBelow:Z

    invoke-virtual {p1, v4}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 589
    invoke-virtual {p0}, Landroidx/preference/Preference;->isCopyingEnabled()Z

    move-result v4

    .line 591
    .local v4, "copyingEnabled":Z
    if-eqz v4, :cond_10

    iget-object v7, p0, Landroidx/preference/Preference;->mOnCopyListener:Landroidx/preference/Preference$OnPreferenceCopyListener;

    if-nez v7, :cond_10

    .line 592
    new-instance v7, Landroidx/preference/Preference$OnPreferenceCopyListener;

    invoke-direct {v7, p0}, Landroidx/preference/Preference$OnPreferenceCopyListener;-><init>(Landroidx/preference/Preference;)V

    iput-object v7, p0, Landroidx/preference/Preference;->mOnCopyListener:Landroidx/preference/Preference$OnPreferenceCopyListener;

    .line 594
    :cond_10
    const/4 v7, 0x0

    if-eqz v4, :cond_11

    iget-object v9, p0, Landroidx/preference/Preference;->mOnCopyListener:Landroidx/preference/Preference$OnPreferenceCopyListener;

    goto :goto_6

    :cond_11
    move-object v9, v7

    :goto_6
    invoke-virtual {v0, v9}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 595
    invoke-virtual {v0, v4}, Landroid/view/View;->setLongClickable(Z)V

    .line 600
    if-eqz v4, :cond_12

    if-nez v3, :cond_12

    .line 601
    invoke-static {v0, v7}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 603
    :cond_12
    return-void
.end method

.method public onClick()V
    .locals 0

    .line 942
    return-void
.end method

.method public onDependencyChanged(Landroidx/preference/Preference;Z)V
    .locals 1
    .param p1, "dependency"    # Landroidx/preference/Preference;
    .param p2, "disableDependent"    # Z

    .line 1502
    iget-boolean v0, p0, Landroidx/preference/Preference;->mDependencyMet:Z

    if-ne v0, p2, :cond_0

    .line 1503
    xor-int/lit8 v0, p2, 0x1

    iput-boolean v0, p0, Landroidx/preference/Preference;->mDependencyMet:Z

    .line 1506
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->notifyDependencyChange(Z)V

    .line 1508
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 1510
    :cond_0
    return-void
.end method

.method public onDetached()V
    .locals 1

    .line 1385
    invoke-virtual {p0}, Landroidx/preference/Preference;->unregisterDependency()V

    .line 1386
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/preference/Preference;->mWasDetached:Z

    .line 1387
    return-void
.end method

.method public onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .line 342
    const/4 v0, 0x0

    return-object v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0
    .param p1, "info"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 2124
    return-void
.end method

.method public onParentChanged(Landroidx/preference/Preference;Z)V
    .locals 1
    .param p1, "parent"    # Landroidx/preference/Preference;
    .param p2, "disableChild"    # Z

    .line 1519
    iget-boolean v0, p0, Landroidx/preference/Preference;->mParentDependencyMet:Z

    if-ne v0, p2, :cond_0

    .line 1520
    xor-int/lit8 v0, p2, 0x1

    iput-boolean v0, p0, Landroidx/preference/Preference;->mParentDependencyMet:Z

    .line 1523
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->notifyDependencyChange(Z)V

    .line 1525
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 1527
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 2108
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    .line 2109
    sget-object v0, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    goto :goto_0

    .line 2110
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong state class -- expecting Preference State"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2112
    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .line 2058
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    .line 2059
    sget-object v0, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method public onSetInitialValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "defaultValue"    # Ljava/lang/Object;

    .line 1648
    return-void
.end method

.method public onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0
    .param p1, "restorePersistedValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .line 1634
    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->onSetInitialValue(Ljava/lang/Object;)V

    .line 1635
    return-void
.end method

.method public performClick()V
    .locals 3

    .line 1194
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->isSelectable()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    .line 1198
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->onClick()V

    .line 1200
    iget-object v0, p0, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    invoke-interface {v0, p0}, Landroidx/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroidx/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1201
    return-void

    .line 1204
    :cond_2
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    .line 1205
    .local v0, "preferenceManager":Landroidx/preference/PreferenceManager;
    if-eqz v0, :cond_3

    .line 1206
    nop

    .line 1207
    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getOnPreferenceTreeClickListener()Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;

    move-result-object v1

    .line 1208
    .local v1, "listener":Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;
    if-eqz v1, :cond_3

    invoke-interface {v1, p0}, Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1209
    return-void

    .line 1213
    .end local v1    # "listener":Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;
    :cond_3
    iget-object v1, p0, Landroidx/preference/Preference;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_4

    .line 1214
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1215
    .local v1, "context":Landroid/content/Context;
    iget-object v2, p0, Landroidx/preference/Preference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1217
    .end local v1    # "context":Landroid/content/Context;
    :cond_4
    return-void

    .line 1195
    .end local v0    # "preferenceManager":Landroidx/preference/PreferenceManager;
    :goto_0
    return-void
.end method

.method public performClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 1182
    invoke-virtual {p0}, Landroidx/preference/Preference;->performClick()V

    .line 1183
    return-void
.end method

.method public persistBoolean(Z)Z
    .locals 4
    .param p1, "value"    # Z

    .line 1936
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1937
    const/4 v0, 0x0

    return v0

    .line 1940
    :cond_0
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->getPersistedBoolean(Z)Z

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 1942
    return v1

    .line 1945
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    .line 1946
    .local v0, "dataStore":Landroidx/preference/PreferenceDataStore;
    if-eqz v0, :cond_2

    .line 1947
    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Landroidx/preference/PreferenceDataStore;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1949
    :cond_2
    iget-object v2, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v2}, Landroidx/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1950
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1951
    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 1953
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v1
.end method

.method public persistInt(I)Z
    .locals 4
    .param p1, "value"    # I

    .line 1774
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1775
    const/4 v0, 0x0

    return v0

    .line 1778
    :cond_0
    not-int v0, p1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->getPersistedInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 1780
    return v1

    .line 1783
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    .line 1784
    .local v0, "dataStore":Landroidx/preference/PreferenceDataStore;
    if-eqz v0, :cond_2

    .line 1785
    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Landroidx/preference/PreferenceDataStore;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1787
    :cond_2
    iget-object v2, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v2}, Landroidx/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1788
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1789
    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 1791
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v1
.end method

.method public persistString(Ljava/lang/String;)Z
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 1667
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1668
    const/4 v0, 0x0

    return v0

    .line 1672
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1674
    return v1

    .line 1677
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    .line 1678
    .local v0, "dataStore":Landroidx/preference/PreferenceDataStore;
    if-eqz v0, :cond_2

    .line 1679
    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Landroidx/preference/PreferenceDataStore;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1681
    :cond_2
    iget-object v2, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v2}, Landroidx/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1682
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1683
    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 1685
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v1
.end method

.method public persistStringSet(Ljava/util/Set;)Z
    .locals 4

    .line 1720
    .local p1, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1721
    const/4 v0, 0x0

    return v0

    .line 1725
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1727
    return v1

    .line 1730
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    .line 1731
    .local v0, "dataStore":Landroidx/preference/PreferenceDataStore;
    if-eqz v0, :cond_2

    .line 1732
    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Landroidx/preference/PreferenceDataStore;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    .line 1734
    :cond_2
    iget-object v2, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v2}, Landroidx/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1735
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1736
    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    .line 1738
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v1
.end method

.method public final registerDependency()V
    .locals 4

    .line 1406
    iget-object v0, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1408
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v0

    .line 1409
    .local v0, "preference":Landroidx/preference/Preference;
    if-eqz v0, :cond_1

    .line 1410
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->registerDependent(Landroidx/preference/Preference;)V

    .line 1415
    return-void

    .line 1412
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dependency \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" not found for preference \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" (title: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final registerDependent(Landroidx/preference/Preference;)V
    .locals 1
    .param p1, "dependent"    # Landroidx/preference/Preference;

    .line 1455
    iget-object v0, p0, Landroidx/preference/Preference;->mDependents:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1456
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/preference/Preference;->mDependents:Ljava/util/List;

    .line 1459
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1461
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Landroidx/preference/Preference;->onDependencyChanged(Landroidx/preference/Preference;Z)V

    .line 1462
    return-void
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "container"    # Landroid/os/Bundle;

    .line 2070
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2071
    return-void
.end method

.method public saveHierarchyState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "container"    # Landroid/os/Bundle;

    .line 2019
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 2020
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 791
    iget-boolean v0, p0, Landroidx/preference/Preference;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 792
    iput-boolean p1, p0, Landroidx/preference/Preference;->mEnabled:Z

    .line 795
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->notifyDependencyChange(Z)V

    .line 797
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 799
    :cond_0
    return-void
.end method

.method public final setEnabledStateOnViews(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .line 609
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 611
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 612
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 613
    .local v0, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 614
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Landroidx/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 613
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 617
    .end local v0    # "vg":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "iconResId"    # I

    .line 716
    iget-object v0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 717
    iput p1, p0, Landroidx/preference/Preference;->mIconResId:I

    .line 718
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 702
    iget-object v0, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 703
    iput-object p1, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 704
    const/4 v0, 0x0

    iput v0, p0, Landroidx/preference/Preference;->mIconResId:I

    .line 705
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 707
    :cond_0
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 352
    iput-object p1, p0, Landroidx/preference/Preference;->mIntent:Landroid/content/Intent;

    .line 353
    return-void
.end method

.method public setLayoutResource(I)V
    .locals 0
    .param p1, "layoutResId"    # I

    .line 461
    iput p1, p0, Landroidx/preference/Preference;->mLayoutResId:I

    .line 462
    return-void
.end method

.method public final setOnPreferenceChangeInternalListener(Landroidx/preference/Preference$OnPreferenceChangeInternalListener;)V
    .locals 0
    .param p1, "listener"    # Landroidx/preference/Preference$OnPreferenceChangeInternalListener;

    .line 1286
    iput-object p1, p0, Landroidx/preference/Preference;->mListener:Landroidx/preference/Preference$OnPreferenceChangeInternalListener;

    .line 1287
    return-void
.end method

.method public setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V
    .locals 0
    .param p1, "onPreferenceChangeListener"    # Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 1142
    iput-object p1, p0, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 1143
    return-void
.end method

.method public setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V
    .locals 0
    .param p1, "onPreferenceClickListener"    # Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 1163
    iput-object p1, p0, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 1164
    return-void
.end method

.method public setOrder(I)V
    .locals 1
    .param p1, "order"    # I

    .line 631
    iget v0, p0, Landroidx/preference/Preference;->mOrder:I

    if-eq p1, v0, :cond_0

    .line 632
    iput p1, p0, Landroidx/preference/Preference;->mOrder:I

    .line 635
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyHierarchyChanged()V

    .line 637
    :cond_0
    return-void
.end method

.method public setPreferenceDataStore(Landroidx/preference/PreferenceDataStore;)V
    .locals 0
    .param p1, "dataStore"    # Landroidx/preference/PreferenceDataStore;

    .line 396
    iput-object p1, p0, Landroidx/preference/Preference;->mPreferenceDataStore:Landroidx/preference/PreferenceDataStore;

    .line 397
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .line 762
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummaryProvider()Landroidx/preference/Preference$SummaryProvider;

    move-result-object v0

    if-nez v0, :cond_1

    .line 765
    iget-object v0, p0, Landroidx/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 766
    iput-object p1, p0, Landroidx/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    .line 767
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 769
    :cond_0
    return-void

    .line 763
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Preference already has a SummaryProvider set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setSummaryProvider(Landroidx/preference/Preference$SummaryProvider;)V
    .locals 0
    .param p1, "summaryProvider"    # Landroidx/preference/Preference$SummaryProvider;

    .line 1106
    iput-object p1, p0, Landroidx/preference/Preference;->mSummaryProvider:Landroidx/preference/Preference$SummaryProvider;

    .line 1107
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 1108
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleResId"    # I

    .line 680
    iget-object v0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 681
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 667
    iget-object v0, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 668
    iput-object p1, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    .line 669
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 671
    :cond_0
    return-void
.end method

.method public final setVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 872
    iget-boolean v0, p0, Landroidx/preference/Preference;->mVisible:Z

    if-eq v0, p1, :cond_0

    .line 873
    iput-boolean p1, p0, Landroidx/preference/Preference;->mVisible:Z

    .line 874
    iget-object v0, p0, Landroidx/preference/Preference;->mListener:Landroidx/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, p0, Landroidx/preference/Preference;->mListener:Landroidx/preference/Preference$OnPreferenceChangeInternalListener;

    invoke-interface {v0, p0}, Landroidx/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceVisibilityChange(Landroidx/preference/Preference;)V

    .line 878
    :cond_0
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .line 1535
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public shouldPersist()Z
    .locals 1

    .line 1011
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1981
    invoke-virtual {p0}, Landroidx/preference/Preference;->getFilterableStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final tryCommit(Landroid/content/SharedPreferences$Editor;)V
    .locals 1
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;

    .line 1651
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->shouldCommit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1652
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1654
    :cond_0
    return-void
.end method

.method public final unregisterDependency()V
    .locals 1

    .line 1418
    iget-object v0, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1419
    iget-object v0, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v0

    .line 1420
    .local v0, "oldDependency":Landroidx/preference/Preference;
    if-eqz v0, :cond_0

    .line 1421
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->unregisterDependent(Landroidx/preference/Preference;)V

    .line 1424
    .end local v0    # "oldDependency":Landroidx/preference/Preference;
    :cond_0
    return-void
.end method

.method public final unregisterDependent(Landroidx/preference/Preference;)V
    .locals 1
    .param p1, "dependent"    # Landroidx/preference/Preference;

    .line 1471
    iget-object v0, p0, Landroidx/preference/Preference;->mDependents:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1472
    iget-object v0, p0, Landroidx/preference/Preference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1474
    :cond_0
    return-void
.end method
