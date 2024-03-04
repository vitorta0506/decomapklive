.class public abstract Lv5/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/common/base/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/h<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lv5/a;

    invoke-direct {v0, p0}, Lv5/a;-><init>(Lv5/b;)V

    iput-object v0, p0, Lv5/b;->a:Lcom/google/common/base/h;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Ljava/lang/String;
.end method
