.class public Landroidx/preference/UnPressableLinearLayout;
.super Landroid/widget/LinearLayout;
.source "UnPressableLinearLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method


# virtual methods
.method public dispatchSetPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .line 52
    return-void
.end method
