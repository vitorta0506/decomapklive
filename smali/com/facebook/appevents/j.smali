.class public final synthetic Lcom/facebook/appevents/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lcom/facebook/appevents/j;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/appevents/j;

    invoke-direct {v0}, Lcom/facebook/appevents/j;-><init>()V

    sput-object v0, Lcom/facebook/appevents/j;->a:Lcom/facebook/appevents/j;

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

    invoke-static {}, Lcom/facebook/appevents/AppEventsLoggerImpl$Companion;->a()V

    return-void
.end method
