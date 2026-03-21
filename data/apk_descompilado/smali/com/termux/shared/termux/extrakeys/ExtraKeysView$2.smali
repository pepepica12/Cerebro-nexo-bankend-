.class public Lcom/termux/shared/termux/extrakeys/ExtraKeysView$2;
.super Landroid/graphics/drawable/ColorDrawable;
.source "ExtraKeysView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->reload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;


# direct methods
.method public constructor <init>(Lcom/termux/shared/termux/extrakeys/ExtraKeysView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/shared/termux/extrakeys/ExtraKeysView;
    .param p2, "arg0"    # I

    .line 312
    iput-object p1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$2;->this$0:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    invoke-direct {p0, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-void
.end method


# virtual methods
.method public hasFocusStateSpecified()Z
    .locals 1

    .line 317
    const/4 v0, 0x1

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .line 314
    const/4 v0, 0x1

    return v0
.end method
