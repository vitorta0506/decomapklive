.class public final Lwc/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwc/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/linecorp/linesdk/LineIdToken;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lwc/b$b;)Lcom/linecorp/linesdk/LineIdToken;
    .locals 0

    iget-object p0, p0, Lwc/b$b;->a:Lcom/linecorp/linesdk/LineIdToken;

    return-object p0
.end method

.method static synthetic b(Lwc/b$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lwc/b$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lwc/b$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lwc/b$b;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lwc/b$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lwc/b$b;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lwc/b$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lwc/b$b;->e:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public f()Lwc/b;
    .locals 2

    new-instance v0, Lwc/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lwc/b;-><init>(Lwc/b$b;Lwc/b$a;)V

    return-object v0
.end method

.method public g(Ljava/lang/String;)Lwc/b$b;
    .locals 0

    iput-object p1, p0, Lwc/b$b;->d:Ljava/lang/String;

    return-object p0
.end method

.method public h(Ljava/lang/String;)Lwc/b$b;
    .locals 0

    iput-object p1, p0, Lwc/b$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public i(Ljava/lang/String;)Lwc/b$b;
    .locals 0

    iput-object p1, p0, Lwc/b$b;->e:Ljava/lang/String;

    return-object p0
.end method

.method public j(Ljava/lang/String;)Lwc/b$b;
    .locals 0

    iput-object p1, p0, Lwc/b$b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public k(Lcom/linecorp/linesdk/LineIdToken;)Lwc/b$b;
    .locals 0

    iput-object p1, p0, Lwc/b$b;->a:Lcom/linecorp/linesdk/LineIdToken;

    return-object p0
.end method
