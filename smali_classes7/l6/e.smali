.class public final synthetic Ll6/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La6/h;


# static fields
.field public static final synthetic a:Ll6/e;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ll6/e;

    invoke-direct {v0}, Ll6/e;-><init>()V

    sput-object v0, Ll6/e;->a:Ll6/e;

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

    invoke-static {p1}, Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;->a(La6/e;)Ll6/d;

    move-result-object p1

    return-object p1
.end method
