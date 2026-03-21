.class public Lcom/termux/shared/termux/extrakeys/ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS$8;
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
    .locals 1

    .line 143
    invoke-direct {p0}, Lcom/termux/shared/termux/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;-><init>()V

    .line 144
    sget-object v0, Lcom/termux/shared/termux/extrakeys/ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS;->CLASSIC_ARROWS_DISPLAY:Lcom/termux/shared/termux/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;

    invoke-virtual {p0, v0}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 145
    sget-object v0, Lcom/termux/shared/termux/extrakeys/ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS;->WELL_KNOWN_CHARACTERS_DISPLAY:Lcom/termux/shared/termux/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;

    invoke-virtual {p0, v0}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 146
    sget-object v0, Lcom/termux/shared/termux/extrakeys/ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS;->LESS_KNOWN_CHARACTERS_DISPLAY:Lcom/termux/shared/termux/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;

    invoke-virtual {p0, v0}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 147
    sget-object v0, Lcom/termux/shared/termux/extrakeys/ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS;->NICER_LOOKING_DISPLAY:Lcom/termux/shared/termux/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;

    invoke-virtual {p0, v0}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 148
    return-void
.end method
