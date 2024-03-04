.class public final Ll5/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll5/h;


# instance fields
.field private final a:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method private constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ll5/j;->a:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public static c(Ljava/util/concurrent/ScheduledExecutorService;)Ll5/j;
    .locals 1

    new-instance v0, Ll5/j;

    invoke-direct {v0, p0}, Ll5/j;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    iget-object v0, p0, Ll5/j;->a:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method
