.class final Lv6/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv6/c$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv6/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/Appendable;

.field private final b:Ljava/lang/StringBuilder;

.field private c:Z


# direct methods
.method private constructor <init>(Ljava/lang/Appendable;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lv6/c$c;->b:Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lv6/c$c;->c:Z

    .line 5
    iput-object p1, p0, Lv6/c$c;->a:Ljava/lang/Appendable;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Appendable;Lv6/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lv6/c$c;-><init>(Ljava/lang/Appendable;)V

    return-void
.end method

.method private d(Ljava/lang/CharSequence;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lv6/c$c;->c:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lv6/c$c;->c:Z

    .line 4
    iget-object v0, p0, Lv6/c$c;->a:Ljava/lang/Appendable;

    iget-object v1, p0, Lv6/c$c;->b:Ljava/lang/StringBuilder;

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 5
    :cond_1
    iget-object v0, p0, Lv6/c$c;->a:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    add-int/lit8 v3, v1, 0x1

    .line 3
    invoke-interface {p1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2}, Lv6/c$c;->d(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    .line 4
    iput-boolean v2, p0, Lv6/c$c;->c:Z

    move v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {p1, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, p1}, Lv6/c$c;->d(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lv6/c$c;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lv6/c$c;->b:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, -0x2

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " Outdent() without matching Indent()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lv6/c$c;->b:Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
