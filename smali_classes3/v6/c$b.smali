.class final Lv6/c$b;
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
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/Appendable;


# direct methods
.method private constructor <init>(Ljava/lang/Appendable;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lv6/c$b;->a:Ljava/lang/Appendable;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Appendable;Lv6/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lv6/c$b;-><init>(Ljava/lang/Appendable;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lv6/c$b;->a:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
