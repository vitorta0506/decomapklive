.class public final synthetic La1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:La1/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, La1/a;

    invoke-direct {v0}, La1/a;-><init>()V

    sput-object v0, La1/a;->a:La1/a;

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

    invoke-static {}, Lcom/facebook/appevents/suggestedevents/SuggestedEventsManager;->a()V

    return-void
.end method
