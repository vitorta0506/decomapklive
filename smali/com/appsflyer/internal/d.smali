.class public final synthetic Lcom/appsflyer/internal/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# static fields
.field public static final synthetic a:Lcom/appsflyer/internal/d;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appsflyer/internal/d;

    invoke-direct {v0}, Lcom/appsflyer/internal/d;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/d;->a:Lcom/appsflyer/internal/d;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/appsflyer/internal/AFb1bSDK;->a(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-void
.end method
