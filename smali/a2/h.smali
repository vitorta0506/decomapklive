.class public final synthetic La2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/q$a;


# instance fields
.field public final synthetic a:La2/c$a;

.field public final synthetic b:I

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(La2/c$a;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/h;->a:La2/c$a;

    iput p2, p0, La2/h;->b:I

    iput-wide p3, p0, La2/h;->c:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, La2/h;->a:La2/c$a;

    iget v1, p0, La2/h;->b:I

    iget-wide v2, p0, La2/h;->c:J

    check-cast p1, La2/c;

    invoke-static {v0, v1, v2, v3, p1}, La2/n1;->V0(La2/c$a;IJLa2/c;)V

    return-void
.end method
