.class public Lbc/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String; = "RootKeyUtil"


# instance fields
.field private a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lbc/d;->a:[B

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p4}, Lbc/c;->b(Ljava/lang/String;)[B

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lbc/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 2
    sget-object v0, Lbc/d;->b:Ljava/lang/String;

    const-string v1, "initRootKey: sha1"

    invoke-static {v0, v1}, Lbc/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, p2, p3, p4, v0}, Lbc/a;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZ)[B

    move-result-object p1

    iput-object p1, p0, Lbc/d;->a:[B

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lbc/d;->b:Ljava/lang/String;

    const-string v1, "initRootKey: sha256"

    invoke-static {v0, v1}, Lbc/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 5
    invoke-static {p1, p2, p3, p4, v0}, Lbc/a;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZ)[B

    move-result-object p1

    iput-object p1, p0, Lbc/d;->a:[B

    :goto_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbc/d;
    .locals 1

    .line 1
    new-instance v0, Lbc/d;

    invoke-direct {v0}, Lbc/d;-><init>()V

    .line 2
    invoke-direct {v0, p0, p1, p2, p3}, Lbc/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public c()[B
    .locals 1

    iget-object v0, p0, Lbc/d;->a:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
