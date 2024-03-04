.class final Ly2/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ly2/c$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lx2/b;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ly2/b;->a:Ly2/b;

    sput-object v0, Ly2/c$a;->c:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lx2/b$b;

    invoke-direct {v0}, Lx2/b$b;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Lx2/b$b;->o(Ljava/lang/CharSequence;)Lx2/b$b;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p2}, Lx2/b$b;->p(Landroid/text/Layout$Alignment;)Lx2/b$b;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p3, p4}, Lx2/b$b;->h(FI)Lx2/b$b;

    move-result-object p1

    .line 6
    invoke-virtual {p1, p5}, Lx2/b$b;->i(I)Lx2/b$b;

    move-result-object p1

    .line 7
    invoke-virtual {p1, p6}, Lx2/b$b;->k(F)Lx2/b$b;

    move-result-object p1

    .line 8
    invoke-virtual {p1, p7}, Lx2/b$b;->l(I)Lx2/b$b;

    move-result-object p1

    .line 9
    invoke-virtual {p1, p8}, Lx2/b$b;->n(F)Lx2/b$b;

    move-result-object p1

    if-eqz p9, :cond_0

    .line 10
    invoke-virtual {p1, p10}, Lx2/b$b;->s(I)Lx2/b$b;

    .line 11
    :cond_0
    invoke-virtual {p1}, Lx2/b$b;->a()Lx2/b;

    move-result-object p1

    iput-object p1, p0, Ly2/c$a;->a:Lx2/b;

    .line 12
    iput p11, p0, Ly2/c$a;->b:I

    return-void
.end method

.method public static synthetic a(Ly2/c$a;Ly2/c$a;)I
    .locals 0

    invoke-static {p0, p1}, Ly2/c$a;->c(Ly2/c$a;Ly2/c$a;)I

    move-result p0

    return p0
.end method

.method static synthetic b()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Ly2/c$a;->c:Ljava/util/Comparator;

    return-object v0
.end method

.method private static synthetic c(Ly2/c$a;Ly2/c$a;)I
    .locals 0

    iget p1, p1, Ly2/c$a;->b:I

    iget p0, p0, Ly2/c$a;->b:I

    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method
