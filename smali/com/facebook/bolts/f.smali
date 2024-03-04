.class public final synthetic Lcom/facebook/bolts/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/bolts/Continuation;


# static fields
.field public static final synthetic a:Lcom/facebook/bolts/f;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/bolts/f;

    invoke-direct {v0}, Lcom/facebook/bolts/f;-><init>()V

    sput-object v0, Lcom/facebook/bolts/f;->a:Lcom/facebook/bolts/f;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final then(Lcom/facebook/bolts/Task;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/facebook/bolts/Task;->e(Lcom/facebook/bolts/Task;)Lcom/facebook/bolts/Task;

    move-result-object p1

    return-object p1
.end method
