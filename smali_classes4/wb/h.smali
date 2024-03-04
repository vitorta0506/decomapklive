.class public final Lwb/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwb/h$a;
    }
.end annotation


# static fields
.field private static final d:Lwb/h;


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Ljava/util/concurrent/ExecutorService;

.field private final c:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lwb/h;

    invoke-direct {v0}, Lwb/h;-><init>()V

    sput-object v0, Lwb/h;->d:Lwb/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lxb/a;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lwb/h;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lwb/h$a;

    invoke-direct {v0}, Lwb/h$a;-><init>()V

    iput-object v0, p0, Lwb/h;->a:Ljava/util/concurrent/Executor;

    invoke-static {}, Lxb/a;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lwb/h;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static a()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lwb/h;->d:Lwb/h;

    iget-object v0, v0, Lwb/h;->b:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static b()Ljava/util/concurrent/Executor;
    .locals 1

    sget-object v0, Lwb/h;->d:Lwb/h;

    iget-object v0, v0, Lwb/h;->c:Ljava/util/concurrent/Executor;

    return-object v0
.end method
