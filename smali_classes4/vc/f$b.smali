.class public final Lvc/f$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvc/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lvc/f$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lvc/f$b;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lvc/f$b;->a:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public b()Lvc/f;
    .locals 2

    new-instance v0, Lvc/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lvc/f;-><init>(Lvc/f$b;Lvc/f$a;)V

    return-object v0
.end method

.method public c(Ljava/util/List;)Lvc/f$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lvc/f$c;",
            ">;)",
            "Lvc/f$b;"
        }
    .end annotation

    iput-object p1, p0, Lvc/f$b;->a:Ljava/util/List;

    return-object p0
.end method
