.class public final Lmh/n$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmh/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field private static final c:Lmh/n;


# instance fields
.field private final a:Lmh/n;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lmh/n;->a(Ljava/util/List;)Lmh/n;

    move-result-object v0

    sput-object v0, Lmh/n$b;->c:Lmh/n;

    return-void
.end method

.method private constructor <init>(Lmh/n;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "parent"

    .line 3
    invoke-static {p1, v0}, Llh/b;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lmh/n$b;->a:Lmh/n;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lmh/n$b;->b:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lmh/n;Lmh/n$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lmh/n$b;-><init>(Lmh/n;)V

    return-void
.end method

.method static synthetic a()Lmh/n;
    .locals 1

    sget-object v0, Lmh/n$b;->c:Lmh/n;

    return-object v0
.end method


# virtual methods
.method public b()Lmh/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lmh/n$b;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lmh/n$b;->a:Lmh/n;

    return-object v0

    .line 3
    :cond_0
    invoke-static {v0}, Lmh/n;->a(Ljava/util/List;)Lmh/n;

    move-result-object v0

    return-object v0
.end method
