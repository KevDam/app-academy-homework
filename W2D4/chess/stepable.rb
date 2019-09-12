module Stepable
    def moves
        moves = []

        move_diffs.each do |dx, dy|
            x, y = pos
            pos = [x + dx, y + dy]

            next if !board.valid_pos?(pos)

            if board[pos] == NullPiece.instance
                moves << pos
            elsif board[pos].color != self.color
                moves << pos
            end
        end

        moves
    end

    private
    def move_diffs

    end
end