.class public final synthetic Lcom/facebook/appevents/codeless/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# static fields
.field public static final synthetic a:Lcom/facebook/appevents/codeless/g;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/appevents/codeless/g;

    invoke-direct {v0}, Lcom/facebook/appevents/codeless/g;-><init>()V

    sput-object v0, Lcom/facebook/appevents/codeless/g;->a:Lcom/facebook/appevents/codeless/g;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 0

    invoke-static {p1}, Lcom/facebook/appevents/codeless/ViewIndexer$Companion;->a(Lcom/facebook/GraphResponse;)V

    return-void
.end method
