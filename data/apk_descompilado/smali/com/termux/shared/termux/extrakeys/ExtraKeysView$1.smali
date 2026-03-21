.class public Lcom/termux/shared/termux/extrakeys/ExtraKeysView$1;
.super Ljava/util/HashMap;
.source "ExtraKeysView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/shared/termux/extrakeys/ExtraKeysView;->getDefaultSpecialButtons(Lcom/termux/shared/termux/extrakeys/ExtraKeysView;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

.field public final synthetic val$extraKeysView:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;


# direct methods
.method public constructor <init>(Lcom/termux/shared/termux/extrakeys/ExtraKeysView;Lcom/termux/shared/termux/extrakeys/ExtraKeysView;)V
    .locals 2
    .param p1, "this$0"    # Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    .line 271
    iput-object p1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$1;->this$0:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    iput-object p2, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$1;->val$extraKeysView:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 272
    sget-object p2, Lcom/termux/shared/termux/extrakeys/SpecialButton;->CTRL:Lcom/termux/shared/termux/extrakeys/SpecialButton;

    new-instance v0, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;

    iget-object v1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$1;->val$extraKeysView:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    invoke-direct {v0, v1}, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;-><init>(Lcom/termux/shared/termux/extrakeys/ExtraKeysView;)V

    invoke-virtual {p0, p2, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object p2, Lcom/termux/shared/termux/extrakeys/SpecialButton;->ALT:Lcom/termux/shared/termux/extrakeys/SpecialButton;

    new-instance v0, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;

    iget-object v1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$1;->val$extraKeysView:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    invoke-direct {v0, v1}, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;-><init>(Lcom/termux/shared/termux/extrakeys/ExtraKeysView;)V

    invoke-virtual {p0, p2, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object p2, Lcom/termux/shared/termux/extrakeys/SpecialButton;->SHIFT:Lcom/termux/shared/termux/extrakeys/SpecialButton;

    new-instance v0, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;

    iget-object v1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$1;->val$extraKeysView:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    invoke-direct {v0, v1}, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;-><init>(Lcom/termux/shared/termux/extrakeys/ExtraKeysView;)V

    invoke-virtual {p0, p2, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object p2, Lcom/termux/shared/termux/extrakeys/SpecialButton;->META:Lcom/termux/shared/termux/extrakeys/SpecialButton;

    new-instance v0, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;

    iget-object v1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$1;->val$extraKeysView:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    invoke-direct {v0, v1}, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;-><init>(Lcom/termux/shared/termux/extrakeys/ExtraKeysView;)V

    invoke-virtual {p0, p2, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object p2, Lcom/termux/shared/termux/extrakeys/SpecialButton;->FN:Lcom/termux/shared/termux/extrakeys/SpecialButton;

    new-instance v0, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;

    iget-object v1, p0, Lcom/termux/shared/termux/extrakeys/ExtraKeysView$1;->val$extraKeysView:Lcom/termux/shared/termux/extrakeys/ExtraKeysView;

    invoke-direct {v0, v1}, Lcom/termux/shared/termux/extrakeys/SpecialButtonState;-><init>(Lcom/termux/shared/termux/extrakeys/ExtraKeysView;)V

    invoke-virtual {p0, p2, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    return-void
.end method
