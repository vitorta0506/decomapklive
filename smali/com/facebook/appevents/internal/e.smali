.class public final synthetic Lcom/facebook/appevents/internal/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lcom/facebook/appevents/internal/e;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/appevents/internal/e;

    invoke-direct {v0}, Lcom/facebook/appevents/internal/e;-><init>()V

    sput-object v0, Lcom/facebook/appevents/internal/e;->a:Lcom/facebook/appevents/internal/e;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->c()V

    return-void
.end method
