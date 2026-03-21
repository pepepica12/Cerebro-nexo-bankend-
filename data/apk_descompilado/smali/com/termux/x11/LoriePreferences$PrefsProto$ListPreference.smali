.class public Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;
.super Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;
.source "LoriePreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/x11/LoriePreferences$PrefsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListPreference"
.end annotation


# instance fields
.field public final entries:I

.field public final synthetic this$0:Lcom/termux/x11/LoriePreferences$PrefsProto;

.field public final values:I


# direct methods
.method public constructor <init>(Lcom/termux/x11/LoriePreferences$PrefsProto;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .param p1, "this$0"    # Lcom/termux/x11/LoriePreferences$PrefsProto;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defValue"    # Ljava/lang/String;
    .param p4, "entries"    # I
    .param p5, "values"    # I

    .line 794
    iput-object p1, p0, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->this$0:Lcom/termux/x11/LoriePreferences$PrefsProto;

    .line 795
    const-class v0, [Ljava/lang/String;

    invoke-direct {p0, p2, v0, p3}, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 796
    iput p4, p0, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->entries:I

    .line 797
    iput p5, p0, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->values:I

    .line 798
    return-void
.end method

.method public static synthetic access$200(Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    .line 791
    iget v0, p0, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->entries:I

    return v0
.end method

.method public static synthetic access$300(Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;

    .line 791
    iget v0, p0, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->values:I

    return v0
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .locals 3

    .line 801
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->this$0:Lcom/termux/x11/LoriePreferences$PrefsProto;

    iget-object v0, v0, Lcom/termux/x11/LoriePreferences$PrefsProto;->preferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->key:Ljava/lang/String;

    iget-object v2, p0, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->defValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getArrayItems(ILandroid/content/res/Resources;)[Ljava/lang/String;
    .locals 6
    .param p1, "resourceId"    # I
    .param p2, "resources"    # Landroid/content/res/Resources;

    .line 817
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 818
    .local v0, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 819
    .local v1, "typedArray":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 820
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v3

    .line 821
    .local v3, "type":I
    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 822
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 818
    .end local v2    # "i":I
    .end local v3    # "type":I
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 823
    .restart local v2    # "i":I
    .restart local v3    # "type":I
    :cond_0
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 824
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 825
    .local v4, "resIdOfArray":I
    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 819
    .end local v3    # "type":I
    .end local v4    # "resIdOfArray":I
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 828
    .end local v2    # "i":I
    invoke-static {v1}, Landroidx/lifecycle/viewmodel/internal/ViewModelImpl$$ExternalSyntheticAutoCloseableDispatcher0;->m(Ljava/lang/Object;)V

    .line 830
    .end local v1    # "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 831
    .local v1, "objectArray":[Ljava/lang/Object;
    array-length v2, v1

    const-class v3, [Ljava/lang/String;

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2

    .line 818
    .local v1, "typedArray":Landroid/content/res/TypedArray;
    :goto_2
    if-eqz v1, :cond_3

    :try_start_1
    invoke-static {v1}, Landroidx/lifecycle/viewmodel/internal/ViewModelImpl$$ExternalSyntheticAutoCloseableDispatcher0;->m(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw v2
.end method

.method public getEntries()[Ljava/lang/String;
    .locals 2

    .line 809
    iget v0, p0, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->entries:I

    iget-object v1, p0, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->this$0:Lcom/termux/x11/LoriePreferences$PrefsProto;

    iget-object v1, v1, Lcom/termux/x11/LoriePreferences$PrefsProto;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->getArrayItems(ILandroid/content/res/Resources;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValues()[Ljava/lang/String;
    .locals 2

    .line 813
    iget v0, p0, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->values:I

    iget-object v1, p0, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->this$0:Lcom/termux/x11/LoriePreferences$PrefsProto;

    iget-object v1, v1, Lcom/termux/x11/LoriePreferences$PrefsProto;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->getArrayItems(ILandroid/content/res/Resources;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;)V
    .locals 2
    .param p1, "v"    # Ljava/lang/String;

    .line 805
    iget-object v0, p0, Lcom/termux/x11/LoriePreferences$PrefsProto$ListPreference;->this$0:Lcom/termux/x11/LoriePreferences$PrefsProto;

    iget-object v0, v0, Lcom/termux/x11/LoriePreferences$PrefsProto;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/x11/LoriePreferences$PrefsProto$Preference;->key:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 806
    return-void
.end method
