.class public final synthetic Lcom/google/firebase/messaging/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll1/d;


# static fields
.field public static final synthetic a:Lcom/google/firebase/messaging/c0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/messaging/c0;

    invoke-direct {v0}, Lcom/google/firebase/messaging/c0;-><init>()V

    sput-object v0, Lcom/google/firebase/messaging/c0;->a:Lcom/google/firebase/messaging/c0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lq6/a;

    invoke-virtual {p1}, Lq6/a;->c()[B

    move-result-object p1

    return-object p1
.end method
