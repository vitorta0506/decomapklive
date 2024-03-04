.class public final synthetic Lcom/google/firebase/messaging/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La6/h;


# static fields
.field public static final synthetic a:Lcom/google/firebase/messaging/x;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/messaging/x;

    invoke-direct {v0}, Lcom/google/firebase/messaging/x;-><init>()V

    sput-object v0, Lcom/google/firebase/messaging/x;->a:Lcom/google/firebase/messaging/x;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(La6/e;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/google/firebase/messaging/FirebaseMessagingRegistrar;->a(La6/e;)Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object p1

    return-object p1
.end method
