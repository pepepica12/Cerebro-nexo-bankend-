.class public abstract Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;
.super Ljava/lang/Object;
.source "LoriePreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/x11/LoriePreferences$PrefsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Preference"
.end annotation


# instance fields
.field public final defValue:Ljava/lang/Object;

.field public final key:Ljava/lang/String;

.field public final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p3, "default_"    # Ljava/lang/Object;

    .line 718
    .local p2, "class_":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 719
    iput-object p1, p0, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->key:Ljava/lang/String;

    .line 720
    iput-object p2, p0, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->type:Ljava/lang/Class;

    .line 721
    iput-object p3, p0, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->defValue:Ljava/lang/Object;

    .line 722
    return-void
.end method


# virtual methods
.method public asBoolean()Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;
    .locals 1

    .line 737
    move-object v0, p0

    check-cast v0, Lcom/termux/x11/LoriePreferences$PrefsProto$BooleanPreference;

    return-object v0
.end method

.method public asInt()Lcom/termux/x11/LoriePreferences$PrefsProto$IntPreference;
    .locals 1

    .line 733
    move-object v0, p0

    check-cast v0, Lcom/termux/x11/LoriePreferences$PrefsProto$IntPreference;

    return-object v0
.end method

.method public asList()Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;
    .locals 1

    .line 725
    move-object v0, p0

    check-cast v0, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    return-object v0
.end method

.method public asString()Lcom/termux/x11/LoriePreferences$PrefsProto$StringPreference;
    .locals 1

    .line 729
    move-object v0, p0

    check-cast v0, Lcom/termux/x11/LoriePreferences$PrefsProto$StringPreference;

    return-object v0
.end method
