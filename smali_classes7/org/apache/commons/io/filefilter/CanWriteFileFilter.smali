.class public Lorg/apache/commons/io/filefilter/CanWriteFileFilter;
.super Lorg/apache/commons/io/filefilter/a;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CANNOT_WRITE:Lorg/apache/commons/io/filefilter/b;

.field public static final CAN_WRITE:Lorg/apache/commons/io/filefilter/b;

.field private static final serialVersionUID:J = 0x47388b8d5efd54abL


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/io/filefilter/CanWriteFileFilter;

    invoke-direct {v0}, Lorg/apache/commons/io/filefilter/CanWriteFileFilter;-><init>()V

    sput-object v0, Lorg/apache/commons/io/filefilter/CanWriteFileFilter;->CAN_WRITE:Lorg/apache/commons/io/filefilter/b;

    .line 2
    new-instance v1, Lorg/apache/commons/io/filefilter/NotFileFilter;

    invoke-direct {v1, v0}, Lorg/apache/commons/io/filefilter/NotFileFilter;-><init>(Lorg/apache/commons/io/filefilter/b;)V

    sput-object v1, Lorg/apache/commons/io/filefilter/CanWriteFileFilter;->CANNOT_WRITE:Lorg/apache/commons/io/filefilter/b;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/io/filefilter/a;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result p1

    return p1
.end method
