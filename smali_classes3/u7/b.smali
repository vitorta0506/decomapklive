.class public Lu7/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lu7/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lu7/b;
    .locals 1

    .line 1
    sget-object p0, Lu7/b;->a:Lu7/b;

    if-nez p0, :cond_1

    .line 2
    const-class p0, Lu7/b;

    monitor-enter p0

    .line 3
    :try_start_0
    sget-object v0, Lu7/b;->a:Lu7/b;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lu7/b;

    invoke-direct {v0}, Lu7/b;-><init>()V

    sput-object v0, Lu7/b;->a:Lu7/b;

    .line 5
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 6
    :cond_1
    :goto_0
    sget-object p0, Lu7/b;->a:Lu7/b;

    return-object p0
.end method
