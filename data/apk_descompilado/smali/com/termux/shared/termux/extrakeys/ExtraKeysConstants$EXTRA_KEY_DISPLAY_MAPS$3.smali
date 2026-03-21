.class public Lcom/termux/shared/termux/extrakeys/ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS$3;
.super Lcom/termux/shared/termux/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;
.source "ExtraKeysConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/shared/termux/extrakeys/ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 97
    invoke-direct {p0}, Lcom/termux/shared/termux/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;-><init>()V

    .line 100
    const-string v0, "HOME"

    const-string v1, "\u21f1"

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v0, "END"

    const-string v1, "\u21f2"

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v0, "PGUP"

    const-string v1, "\u21d1"

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v0, "PGDN"

    const-string v1, "\u21d3"

    invoke-virtual {p0, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    return-void
.end method
