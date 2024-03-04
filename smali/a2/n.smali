.class public final synthetic La2/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/q$a;


# instance fields
.field public final synthetic a:La2/c$a;

.field public final synthetic b:J

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(La2/c$a;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/n;->a:La2/c$a;

    iput-wide p2, p0, La2/n;->b:J

    iput p4, p0, La2/n;->c:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, La2/n;->a:La2/c$a;

    iget-wide v1, p0, La2/n;->b:J

    iget v3, p0, La2/n;->c:I

    check-cast p1, La2/c;

    invoke-static {v0, v1, v2, v3, p1}, La2/n1;->w0(La2/c$a;JILa2/c;)V

    return-void
.end method
