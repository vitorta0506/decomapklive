.class public Lcom/previewlibrary/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/previewlibrary/a$b;
    }
.end annotation


# instance fields
.field private volatile a:Lbd/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/previewlibrary/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/previewlibrary/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/previewlibrary/a;
    .locals 1

    sget-object v0, Lcom/previewlibrary/a$b;->a:Lcom/previewlibrary/a;

    return-object v0
.end method


# virtual methods
.method public b()Lbd/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/previewlibrary/a;->a:Lbd/a;

    const-string v1, "ZoomMediaLoader loader  no init"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/previewlibrary/a;->a:Lbd/a;

    return-object v0
.end method

.method public c(Lbd/a;)V
    .locals 0

    iput-object p1, p0, Lcom/previewlibrary/a;->a:Lbd/a;

    return-void
.end method
