.class public final synthetic Lcom/facebook/appevents/ml/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lcom/facebook/appevents/ml/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/appevents/ml/b;

    invoke-direct {v0}, Lcom/facebook/appevents/ml/b;-><init>()V

    sput-object v0, Lcom/facebook/appevents/ml/b;->a:Lcom/facebook/appevents/ml/b;

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

    invoke-static {}, Lcom/facebook/appevents/ml/ModelManager;->b()V

    return-void
.end method
