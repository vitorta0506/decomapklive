.class public final Lv0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/concurrent/Executor;

.field private static final b:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lv0/d$a;

    invoke-direct {v0}, Lv0/d$a;-><init>()V

    sput-object v0, Lv0/d;->a:Ljava/util/concurrent/Executor;

    .line 2
    new-instance v0, Lv0/d$b;

    invoke-direct {v0}, Lv0/d$b;-><init>()V

    sput-object v0, Lv0/d;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static a()Ljava/util/concurrent/Executor;
    .locals 1

    sget-object v0, Lv0/d;->b:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public static b()Ljava/util/concurrent/Executor;
    .locals 1

    sget-object v0, Lv0/d;->a:Ljava/util/concurrent/Executor;

    return-object v0
.end method
