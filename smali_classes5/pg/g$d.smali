.class public interface abstract Lpg/g$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpg/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:Lpg/g$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lpg/g$d$a;

    invoke-direct {v0}, Lpg/g$d$a;-><init>()V

    sput-object v0, Lpg/g$d;->a:Lpg/g$d;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation
.end method
