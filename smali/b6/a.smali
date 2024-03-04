.class public final synthetic Lb6/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La6/h;


# static fields
.field public static final synthetic a:Lb6/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lb6/a;

    invoke-direct {v0}, Lb6/a;-><init>()V

    sput-object v0, Lb6/a;->a:Lb6/a;

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

    invoke-static {p1}, Lcom/google/firebase/datatransport/TransportRegistrar;->a(La6/e;)Ll1/f;

    move-result-object p1

    return-object p1
.end method
