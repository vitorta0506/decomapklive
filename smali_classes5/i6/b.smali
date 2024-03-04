.class public final synthetic Li6/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La6/h;


# static fields
.field public static final synthetic a:Li6/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Li6/b;

    invoke-direct {v0}, Li6/b;-><init>()V

    sput-object v0, Li6/b;->a:Li6/b;

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

    invoke-static {p1}, Lcom/google/firebase/heartbeatinfo/a;->d(La6/e;)Lcom/google/firebase/heartbeatinfo/a;

    move-result-object p1

    return-object p1
.end method
