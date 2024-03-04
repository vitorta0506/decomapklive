package com.guochao.faceshow.aaspring.modulars.main.model;

import com.guochao.faceshow.utils.Contants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0007\"\u0004\b\u000b\u0010\t¨\u0006\u0015"}, d2 = {"Lcom/guochao/faceshow/aaspring/modulars/main/model/AddVideoCommentModel;", "", Contants.USER_levelId, "", "commentId", "(II)V", "getCommentId", "()I", "setCommentId", "(I)V", "getLevelId", "setLevelId", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "", "app_GooglePlayRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class AddVideoCommentModel {
    private int commentId;
    private int levelId;

    public AddVideoCommentModel(int i9, int i10) {
        this.levelId = i9;
        this.commentId = i10;
    }

    public static /* synthetic */ AddVideoCommentModel copy$default(AddVideoCommentModel addVideoCommentModel, int i9, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i9 = addVideoCommentModel.levelId;
        }
        if ((i11 & 2) != 0) {
            i10 = addVideoCommentModel.commentId;
        }
        return addVideoCommentModel.copy(i9, i10);
    }

    public final int component1() {
        return this.levelId;
    }

    public final int component2() {
        return this.commentId;
    }

    @NotNull
    public final AddVideoCommentModel copy(int i9, int i10) {
        return new AddVideoCommentModel(i9, i10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AddVideoCommentModel) {
            AddVideoCommentModel addVideoCommentModel = (AddVideoCommentModel) obj;
            return this.levelId == addVideoCommentModel.levelId && this.commentId == addVideoCommentModel.commentId;
        }
        return false;
    }

    public final int getCommentId() {
        return this.commentId;
    }

    public final int getLevelId() {
        return this.levelId;
    }

    public int hashCode() {
        return (this.levelId * 31) + this.commentId;
    }

    public final void setCommentId(int i9) {
        this.commentId = i9;
    }

    public final void setLevelId(int i9) {
        this.levelId = i9;
    }

    @NotNull
    public String toString() {
        return "AddVideoCommentModel(levelId=" + this.levelId + ", commentId=" + this.commentId + ')';
    }
}
