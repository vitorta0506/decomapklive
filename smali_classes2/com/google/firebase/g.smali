.class public final synthetic Lcom/google/firebase/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls6/h$a;


# static fields
.field public static final synthetic a:Lcom/google/firebase/g;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/g;

    invoke-direct {v0}, Lcom/google/firebase/g;-><init>()V

    sput-object v0, Lcom/google/firebase/g;->a:Lcom/google/firebase/g;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/google/firebase/FirebaseCommonRegistrar;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
