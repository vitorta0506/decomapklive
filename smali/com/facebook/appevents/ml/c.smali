.class public final synthetic Lcom/facebook/appevents/ml/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lcom/facebook/appevents/ml/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/appevents/ml/c;

    invoke-direct {v0}, Lcom/facebook/appevents/ml/c;-><init>()V

    sput-object v0, Lcom/facebook/appevents/ml/c;->a:Lcom/facebook/appevents/ml/c;

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

    invoke-static {}, Lcom/facebook/appevents/ml/ModelManager;->c()V

    return-void
.end method
