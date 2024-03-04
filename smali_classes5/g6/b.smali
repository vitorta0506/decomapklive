.class public final synthetic Lg6/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld6/c;


# static fields
.field public static final synthetic a:Lg6/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lg6/b;

    invoke-direct {v0}, Lg6/b;-><init>()V

    sput-object v0, Lg6/b;->a:Lg6/b;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ld6/d;

    invoke-static {p1, p2}, Lcom/google/firebase/encoders/proto/e$a;->b(Ljava/lang/Object;Ld6/d;)V

    return-void
.end method
