.class public abstract Lcom/termux/shared/termux/extrakeys/ExtraKeysConstants$CleverMap;
.super Ljava/util/HashMap;
.source "ExtraKeysConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/shared/termux/extrakeys/ExtraKeysConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CleverMap"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    .local p0, "this":Lcom/termux/shared/termux/extrakeys/ExtraKeysConstants$CleverMap;, "Lcom/termux/shared/termux/extrakeys/ExtraKeysConstants$CleverMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 55
    .local p0, "this":Lcom/termux/shared/termux/extrakeys/ExtraKeysConstants$CleverMap;, "Lcom/termux/shared/termux/extrakeys/ExtraKeysConstants$CleverMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 58
    :cond_0
    return-object p2
.end method
