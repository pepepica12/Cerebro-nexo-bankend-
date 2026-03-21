.class public final Landroidx/startup/AppInitializer;
.super Ljava/lang/Object;
.source "AppInitializer.java"


# static fields
.field public static volatile sInstance:Landroidx/startup/AppInitializer;

.field public static final sLock:Ljava/lang/Object;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDiscovered:Ljava/util/Set;

.field public final mInitialized:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/startup/AppInitializer;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/startup/AppInitializer;->mContext:Landroid/content/Context;

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/startup/AppInitializer;->mDiscovered:Ljava/util/Set;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/startup/AppInitializer;->mInitialized:Ljava/util/Map;

    .line 77
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroidx/startup/AppInitializer;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 86
    sget-object v0, Landroidx/startup/AppInitializer;->sInstance:Landroidx/startup/AppInitializer;

    if-nez v0, :cond_1

    .line 87
    sget-object v0, Landroidx/startup/AppInitializer;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_0
    sget-object v1, Landroidx/startup/AppInitializer;->sInstance:Landroidx/startup/AppInitializer;

    if-nez v1, :cond_0

    .line 89
    new-instance v1, Landroidx/startup/AppInitializer;

    invoke-direct {v1, p0}, Landroidx/startup/AppInitializer;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroidx/startup/AppInitializer;->sInstance:Landroidx/startup/AppInitializer;

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 93
    :cond_1
    :goto_2
    sget-object v0, Landroidx/startup/AppInitializer;->sInstance:Landroidx/startup/AppInitializer;

    return-object v0
.end method


# virtual methods
.method public discoverAndInitialize()V
    .locals 3

    .line 200
    :try_start_0
    const-string v0, "Startup"

    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 201
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroidx/startup/AppInitializer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Landroidx/startup/InitializationProvider;

    .line 202
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .local v0, "provider":Landroid/content/ComponentName;
    iget-object v1, p0, Landroidx/startup/AppInitializer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 204
    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    .line 205
    .local v1, "providerInfo":Landroid/content/pm/ProviderInfo;
    iget-object v2, v1, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    .line 206
    .local v2, "metadata":Landroid/os/Bundle;
    invoke-virtual {p0, v2}, Landroidx/startup/AppInitializer;->discoverAndInitialize(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    .end local v0    # "provider":Landroid/content/ComponentName;
    .end local v1    # "providerInfo":Landroid/content/pm/ProviderInfo;
    .end local v2    # "metadata":Landroid/os/Bundle;
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 211
    nop

    .line 212
    return-void

    .line 210
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    nop

    .line 208
    .local v0, "exception":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    new-instance v1, Landroidx/startup/StartupException;

    invoke-direct {v1, v0}, Landroidx/startup/StartupException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    .end local v0    # "exception":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 211
    throw v0
.end method

.method public discoverAndInitialize(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "metadata"    # Landroid/os/Bundle;

    .line 216
    iget-object v0, p0, Landroidx/startup/AppInitializer;->mContext:Landroid/content/Context;

    sget v1, Landroidx/startup/R$string;->androidx_startup:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "startup":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 219
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 220
    .local v1, "initializing":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 221
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 222
    .local v4, "key":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 223
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 224
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 225
    .local v6, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v7, Landroidx/startup/Initializer;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 226
    move-object v7, v6

    .line 228
    .local v7, "component":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/startup/Initializer<*>;>;"
    iget-object v8, p0, Landroidx/startup/AppInitializer;->mDiscovered:Ljava/util/Set;

    invoke-interface {v8, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 241
    .end local v1    # "initializing":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    .end local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "component":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/startup/Initializer<*>;>;"
    :catch_0
    move-exception v1

    goto :goto_3

    .line 234
    .restart local v1    # "initializing":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    .restart local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    :goto_1
    goto :goto_0

    .line 237
    :cond_1
    iget-object v3, p0, Landroidx/startup/AppInitializer;->mDiscovered:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 238
    .local v4, "component":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/startup/Initializer<*>;>;"
    invoke-virtual {p0, v4, v1}, Landroidx/startup/AppInitializer;->doInitialize(Ljava/lang/Class;Ljava/util/Set;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    nop

    .end local v4    # "component":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/startup/Initializer<*>;>;"
    goto :goto_2

    .line 241
    .end local v1    # "initializing":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    .end local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_3
    nop

    .line 242
    .local v1, "exception":Ljava/lang/ClassNotFoundException;
    new-instance v2, Landroidx/startup/StartupException;

    invoke-direct {v2, v1}, Landroidx/startup/StartupException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 243
    .end local v1    # "exception":Ljava/lang/ClassNotFoundException;
    :cond_2
    nop

    .line 244
    return-void
.end method

.method public final doInitialize(Ljava/lang/Class;Ljava/util/Set;)Ljava/lang/Object;
    .locals 7

    .line 149
    .local p1, "component":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/startup/Initializer<*>;>;"
    .local p2, "initializing":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    invoke-static {}, Landroidx/tracing/Trace;->isEnabled()Z

    move-result v0

    .line 151
    .local v0, "isTracingEnabled":Z
    if-eqz v0, :cond_0

    .line 153
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    goto :goto_0

    .line 194
    :catchall_0
    move-exception v1

    goto/16 :goto_5

    .line 155
    :cond_0
    :goto_0
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 162
    iget-object v1, p0, Landroidx/startup/AppInitializer;->mInitialized:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 163
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    const/4 v1, 0x0

    :try_start_1
    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 166
    .local v1, "instance":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Landroidx/startup/Initializer;

    .line 167
    .local v2, "initializer":Landroidx/startup/Initializer;, "Landroidx/startup/Initializer<*>;"
    nop

    .line 168
    invoke-interface {v2}, Landroidx/startup/Initializer;->dependencies()Ljava/util/List;

    move-result-object v3

    .line 170
    .local v3, "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<+Landroidx/startup/Initializer<*>;>;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 171
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 172
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/startup/Initializer<*>;>;"
    iget-object v6, p0, Landroidx/startup/AppInitializer;->mInitialized:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 173
    invoke-virtual {p0, v5, p2}, Landroidx/startup/AppInitializer;->doInitialize(Ljava/lang/Class;Ljava/util/Set;)Ljava/lang/Object;

    goto :goto_2

    .line 186
    .end local v1    # "instance":Ljava/lang/Object;
    .end local v2    # "initializer":Landroidx/startup/Initializer;, "Landroidx/startup/Initializer<*>;"
    .end local v3    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<+Landroidx/startup/Initializer<*>;>;>;"
    .end local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/startup/Initializer<*>;>;"
    :catchall_1
    move-exception v1

    goto :goto_3

    .line 175
    .restart local v1    # "instance":Ljava/lang/Object;
    .restart local v2    # "initializer":Landroidx/startup/Initializer;, "Landroidx/startup/Initializer<*>;"
    .restart local v3    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<+Landroidx/startup/Initializer<*>;>;>;"
    :cond_1
    :goto_2
    goto :goto_1

    .line 180
    :cond_2
    iget-object v4, p0, Landroidx/startup/AppInitializer;->mContext:Landroid/content/Context;

    invoke-interface {v2, v4}, Landroidx/startup/Initializer;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    .line 184
    .local v4, "result":Ljava/lang/Object;
    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 185
    iget-object v5, p0, Landroidx/startup/AppInitializer;->mInitialized:Ljava/util/Map;

    invoke-interface {v5, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 188
    .end local v1    # "instance":Ljava/lang/Object;
    .end local v2    # "initializer":Landroidx/startup/Initializer;, "Landroidx/startup/Initializer<*>;"
    .end local v3    # "dependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<+Landroidx/startup/Initializer<*>;>;>;"
    goto :goto_4

    .line 186
    .end local v4    # "result":Ljava/lang/Object;
    :goto_3
    nop

    .line 187
    .local v1, "throwable":Ljava/lang/Throwable;
    :try_start_2
    new-instance v2, Landroidx/startup/StartupException;

    invoke-direct {v2, v1}, Landroidx/startup/StartupException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "isTracingEnabled":Z
    .end local p1    # "component":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/startup/Initializer<*>;>;"
    .end local p2    # "initializing":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    throw v2

    .line 190
    .end local v1    # "throwable":Ljava/lang/Throwable;
    .restart local v0    # "isTracingEnabled":Z
    .restart local p1    # "component":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/startup/Initializer<*>;>;"
    .restart local p2    # "initializing":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    :cond_3
    iget-object v1, p0, Landroidx/startup/AppInitializer;->mInitialized:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v1

    .line 192
    .restart local v4    # "result":Ljava/lang/Object;
    :goto_4
    nop

    .line 194
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 192
    return-object v4

    .line 156
    .end local v4    # "result":Ljava/lang/Object;
    :cond_4
    :try_start_3
    const-string v1, "Cannot initialize %s. Cycle detected."

    .line 157
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 156
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "isTracingEnabled":Z
    .end local p1    # "component":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/startup/Initializer<*>;>;"
    .end local p2    # "initializing":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 194
    .end local v1    # "message":Ljava/lang/String;
    .restart local v0    # "isTracingEnabled":Z
    .restart local p1    # "component":Ljava/lang/Class;, "Ljava/lang/Class<+Landroidx/startup/Initializer<*>;>;"
    .restart local p2    # "initializing":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    :goto_5
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 195
    throw v1
.end method
